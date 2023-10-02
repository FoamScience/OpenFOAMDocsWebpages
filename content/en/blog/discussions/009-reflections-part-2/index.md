---
date: 2023-10-02
title: "A reflection system for MeshFreeFoam: Part 2"
linkTitle: "Reflections for MeshFreeFoam 2"
weight: 9
description: >
    Updates on the progress made in the reflections system for MeshFreeFoam and setting
    functional requirements for it to be merged into the code.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - quality-of-life
  - gui
  - openfoam
---

The [previous post](/blog/2023/09/29/a-reflection-system-for-meshfreefoam-part-1/) a few days ago introduced the idea of leveraging a reflection system to automatically build UIs for MeshFreeFoam classes that stay up to date with code changes.

In this post, I outline what's currently possible, what's not, and what's missing.

## UI for OpenFOAM RTS-based models (What works)

Imagine if you can have the following base model class, which acts as a base for OpenFOAM's runtime selection table:
```cpp
class baseModel
{
protected:
    label m_;
    vector vv_;

public:
    TypeName("baseModel");
    declareRunTimeSelectionTable
    (
        autoPtr,
        baseModel,
        dictionary,
        (
            const dictionary& dict
        ),
        (dict)
    );
    static autoPtr<baseModel> New(const dictionary& dict);
};
defineTypeNameAndDebug(baseModel, 0);
defineRunTimeSelectionTable(baseModel, dictionary);
```
And a number of derived models; participating in the runtime selection using a dictionary:
```cpp
class childModel : public baseModel
{
protected:
    word type_;

public:
    TypeName("childModel");
};
defineTypeNameAndDebug(childModel, 0);
addToRunTimeSelectionTable(baseModel, childModel, dictionary);
```
How useful would it be to **automatically** generate a schema of the required dictionary entries for **each model**?

Well, what if you could:
```cpp
Info << generateSchema<childModel>() << endl;
```
and get the following output (note how members from the base class get picked up too! and how correct defaults get chosen for each member):
```
{
    type_           "";
    m_              0;
    vv_             ( 0 0 0 );
}
```

Up to this level; we can do this with the assist of reflections. In fact, this has nothing to do with the RTS. It can be done to any class. Here is a quick animation illustrating the Interactive UI application from [openfoam-reflections](https://github.com/FoamScience/openfoam-reflections):

<div style="position:relative;padding-bottom:56.25%;">
<iframe style="width:100%;height:100%;position:absolute;left:0px;top:0px;" frameborder="0" width="100%" height="100%" allowfullscreen="" allow="autoplay" src="./ReflectionsRTSAnimation.html">
</iframe>
</div>


## UI for OpenFOAM RTS-based models (What doesn't work)

Pushing it a little further, can we walk users through the process of generating a valid dictionary for a `baseModel` to be constructed (!automatically!)? Envision the following workflow in case `baseModel` is both **an abstract class** and **a base for dictionary-based runtime selection**:
1. Prompt users to pick a valid child for `baseModel` (In this case, present them with `childModel` as the only option)
2. Keep prompting them for required members of `childModel`. Naturally we don't want to hardcode the logic there; we want the compiler to generate the required code for us. This way, as we add class members, we won't have to change the UI code.

Well, it turns out we can achieve the first step by looking into the runtime selection table. But the next step is tricky since there will be a need to convert a string (user input) to a C++ type. The runtime selection table itself gets around this issue by keeping pointers to constructors. It's not obvious to me how can we get hold of the concrete type at the moment. In addition, because the reflection is done at compile-time, the `childModel` header needs to be included in the UI code, which defeats the purpose of the RTS.

Also, some special members will need to be handled explicitly, such as having an `autoPtr<something>` that initiates another RTS model.

## Conclusion

While the adopted reflection system has a variety of uses such as iterating over class's member fields and functions, iterating over bases of a class, and even building powerful proxies, using to reflect RTS types doesn't seem possible at the moment.
