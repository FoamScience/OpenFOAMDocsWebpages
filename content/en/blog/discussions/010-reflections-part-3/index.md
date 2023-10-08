---
date: 2023-10-05
title: "A reflection system for MeshFreeFoam: Part 3"
linkTitle: "Reflections for MeshFreeFoam 3"
weight: 10
description: >
    Finalized description of the reflection system for schema generation
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - quality-of-life
  - gui
  - openfoam
---

The [previous post](/blog/2023/10/02/a-reflection-system-for-meshfreefoam-part-2/) outlined the main challenges in implementing a decent reflection system for OpenFOAM while preserving the benefits of the runtime selection mechanism. 


In this post, I describe the final state of the system and its limitations, along with some implementation details.

## Make classes reflect themselves?

From the previous post, we have deduced that it is mainly possible to automatically generate a schema for a class. The only case where generating such a schema proves difficult is when nesting RTS models. So, let's explore how this issue can be resolved. Assume the following abstract base class, which has a few reflected members:
```cpp
# These are only reflected members of baseModel, it can have non-reflected ones
baseModel
|--> key_ (autoPtr<word>)
|--> m_   (label)
|--> vv_  (Vector<scalar>)
```

For the sake of code maintainability, let's say that we have a static member of a template class `builder<T>::schema()` which returns the following dictionary if executed with `[T = baseModel]` (note that the RTS mechanism is consulted for available model options):
```cpp
{
    baseModelType   "__one of ( childModel childModel1 childModel2 )__";
    key                    "__optional Foam::word here__";
    m                      0;
    vv                     ( 0 0 0 );
}
```
Such schema is possible to achieve entirely because of the compile-time reflection system and C++ concepts. But notice that once a user chooses an implemented model, the schema will be missing the members from the chosen `childModel`.

A simple test of such schema methods:
```cpp
constexpr bool hasSchema = SelfReflectableModel<childModel>;
if constexpr (hasSchema) {
    dict = schema<childModel>();
}
```
will result in the following schema:
```
{
    baseModelType   childModel;
    type            ;
    subModel
    {
        baseModelType   "__one of ( childModel childModel1 childModel2 )__";
        key             "__optional Foam::word here__";
        m               0;
        vv              ( 0 0 0 );
    }
    key             "__optional Foam::word here__";
    m               0;
    vv              ( 0 0 0 );
}
```
for a child type which has the following members (Both the nested RTS model `subModel_` and the `type_` member now show up in the schema):
```
childModel : public baseModel
|--> type_     (word)
|--> subModel_ (autoPtr<baseModel>)
```

> From this experiment, we deduce that generating schemas for abstract base classes is way less important than for concrete implementations of the target models.

Note that the previous C++ code snippet features **compile-time if statements** which execute the schema method only if the target type is self-reflectable (a fancy way to say: the type has a `schema` method). If it is not the case, the compiler generates no code. Hence, the runtime cost occurs only if the type is self-reflectable, in which case, an OpenFOAM dictionary is built from the target type's members.

In addition, concepts help generate code for specific cases. A good example is to fill the dictionary values with default-constructed values of the members only if the member type is default-constructible.

Special cases for some class members can be also treated. As an example, take a member which is an `autoPtr<Something>`. If the member points to a RTS-managed type (such us `baseModel`, `childModel`... etc), we will want to execute the schema function from that type. This is how the schema for the `childModel::subModel_` for example is generated while generating the schema for `childModel`.

In the case of the pointed-to member type is not RTS-managed (eg. a simple `word` as in `childModel::key_`), we can assume that it's an optional input and hint that assumption to the end user!

## Runtime selection to the rescue

Reflection is traditionally tailored towards POD ( plain-old-data, which define little behavior ) structures, and using it together with the runtime selection mechanism proves to be difficult. One of the main issues that we particularly need the classes to generate their schema on their own is that we don't want to include all headers in the application (include only those of the base classes), and allow users to dynamically load their libraries). One way of doing this would be to make the `schema` method an **abstract method** on base classes.

On the other hand, we need to generate a schema without creating any objects of the target type, so `schema` must also be **static**. Since there is no such thing as a **static virtual method**, we have to resolve this in another way.

These conflicting interests are the exact reason behind the runtime selection mechanism, so we can simply abuse to, instead of building a table of constructors, build a table of function points which points to a free method (or a static in a template class):
```cpp
// The table of function pointers (for illustration purposes only, function pointers are not stored like this)
(
   childModel &builder<childModel>::schema()
   childModel1 &builder<childModel1>::schema()
   childModel2 &builder<childModel2>::schema()
)
```

Then we leverage the same mechanism `::New` uses to create objects by looking up the table for the model we want; and then call the function through the stored function pointer.

## A recap of the API to generate model schemas

The base block for the whole mechanism would be a static member method to generate a schema for the target type `T`. This method has to have all desired features (eg. can call itself if a member of `T` is an `autoPtr<U>` if U is also an RTS-managed class):
```cpp
dictionary builder<T>::schema()
```

The next layer is a set of static members that need to be present on the base class. Basically, a hash table of regular function pointers, and a few methods to construct and destroy the table. A subclass to the base class is also need so we can use to add children to the table. All of this can be hidden behind a few macros easily.

Similarly to `::New()`, base classes then can have a `baseModel::schema(const word&)` static method which looks up the hash table for the passed-in model type name and calls the corresponding function.

The child classes will also have to initialize a static member for a specific type so they get added to the hash table automatically (static initialization happens before `main`).

Let's look at a full application example, which presents the user with available options for a `baseModel` and generates a schema for **the chosen concrete implementation**:
> Notice how there is no explicit mentioning of child classes.
```cpp
// OpenFOAM includes....
#include "baseModel.H"
int main()
{
    Info << "Choose a Model from available baseModels:" << endl;
    Info << mff::baseModel::schemasPtr_->toc() << endl;
    word modelType;
    std::getline(std::cin, modelType);
    Info << "Here is how you're supposed to construct a " << modelType << endl;
    Info << mff::baseModel::schema(modelType) << endl;
    return 0;
}
```
```
{
    baseModelType   childModel;
    type            ;
    subModel
    {
        baseModelType   "__one of ( childModel childModel1 childModel2 )__";
        key             "__optional Foam::word here__";
        m               0;
        vv              ( 0 0 0 );
    }
    key             "__optional Foam::word here__";
    m               0;
    vv              ( 0 0 0 );
}
```

**Beautiful!** :party_popper: :partying_face:

## Going the extra-mile

There a couple of loose ends to tie up:

### Defaulted values for members???

As it stands now, the schemas will suggest default values for members as in "default values for C++ types". It would be interesting if we could extract the actual default values of the members as used in the target's type construction (They properly have more physical meaning)!

This turns out not be so easy. One idea that comes to mind is to first create a schema for the target type ignoring all optional members; then use that schema to actually create an object of the target type. From there, it only remains to check the values of the optional members.

But this is not possible since objects can be created from all kinds of objects (and not just from a dictionary) and restricting that doesn't look like a good idea.

To achieve this effect, we would have to use complex members holding their metadata; such as:
```cpp
class baseModel
{
    struct alpha {
        static constexpr int min_ = 0;
        static constexpr int max_ = 10;
        static const int default_ = 1;
        static constexpr std::string_view name_ = "alpha";
        static constexpr std::string_view description_ = "cool description of alpha";
        int v;
    } alpha;
};
```

We could then use `alpha.default` to initialize `alpha`; and it is accessible through the reflection system. Since it's a `constexpr`; this adds no runtime costs. The thing is, the default value for non-linear types will need to be initialized out-of-line. Using the reflection system for default values is possible for literal types only since non-literals cannot generally be `constexpr` (at the moment, there is no support for `constexpr std::vector` in any compiler!).

### Complete nested model schemas???

If we look closely at the generated schema from the previous example:
```
{
    baseModelType   childModel;
    type            ;
    subModel
    {
        baseModelType   "__one of ( childModel childModel1 childModel2 )__";
        key             "__optional Foam::word here__";
        m               0;
        vv              ( 0 0 0 );
    }
    key             "__optional Foam::word here__";
    m               0;
    vv              ( 0 0 0 );
}
```
we can see that the `subModel` shows only members of the base class. To make it show the full array of members of the concrete type, the user can be prompted to pick a valid model, and then `baseModel::schema("pickedModel")` will be called inside `builder::schema<baseModel>()` instead of calling `builder::schema<memberBaseType>()`. This scenario is particularly useful in building GUIs.

## Conclusion

At this point, all of the design goals mentioned back in [Part 1](/blog/2023/09/29/a-reflection-system-for-meshfreefoam-part-1/) have been achieved. Except for minor changes, I will not develop the system any further.

Use cases are exclusively **(automatically) generating schemas for OpenFOAM classes** and **(again automatically) building GUI widgets for target types**

You can find the final product with a sample application to iteratively generate a dictionary for some basic models at [FoamScience/openfoam-reflections](https://github.com/FoamScience/openfoam-reflections).
