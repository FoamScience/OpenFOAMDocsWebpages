---
contributors:
- Elwardi
layout: library
title: meshfree/includes/meshlessConcepts.H
url: /api/doc_meshfree__includes__meshlessConcepts
---



``` cpp
#define meshlessConcepts_H

//=== author:Elwardi ===//
namespace Foam
{
    namespace mff
    {
        template <class T>concept PositionType = requires(T t){{T::nComponents}->std::convertible_to<int>;{std::convertible_to<T, VectorSpace<Vector<scalar>, scalar, T::nComponents>>};}

        template <class T, class Cmpt>concept RAContainer = requires(T t, Cmpt c){std::ranges::random_access_range<Cmpt>;}

        template <class T, class Point>concept CallableWithPositions = requires(T t, Point p){{t(p)}->std::convertible_to<scalar>;PositionType<Point>;}

        template <class T, class Point>concept Shape = requires(T t, Point p){{t.contains(p)}->std::convertible_to<bool>;}
    }
}
```

Concepts that enable meta-programming in the core meshless library

<a style="visibility: hidden;" id="standardese-foam__mff__positiontype" href="#standardese-foam__mff__positiontype"></a>
### Foam::mff::PositionType

``` cpp
template <class T>concept PositionType = requires(T t){{T::nComponents}->std::convertible_to<int>;{std::convertible_to<T, VectorSpace<Vector<scalar>, scalar, T::nComponents>>};}
```

Concept checking that a type is a VectorSpace instance with scalar components. The number of components needs to be a constexpr from `T::dim`

-----

<a style="visibility: hidden;" id="standardese-foam__mff__racontainer" href="#standardese-foam__mff__racontainer"></a>
### Foam::mff::RAContainer

``` cpp
template <class T, class Cmpt>concept RAContainer = requires(T t, Cmpt c){std::ranges::random_access_range<Cmpt>;}
```

Concept checking for requirements of OpenFOAM containers with random access iterators

-----

<a style="visibility: hidden;" id="standardese-foam__mff__callablewithpositions" href="#standardese-foam__mff__callablewithpositions"></a>
### Foam::mff::CallableWithPositions

``` cpp
template <class T, class Point>concept CallableWithPositions = requires(T t, Point p){{t(p)}->std::convertible_to<scalar>;PositionType<Point>;}
```

Concept checking for requirements of callables with positions and returning a scalar

-----

<a style="visibility: hidden;" id="standardese-foam__mff__shape" href="#standardese-foam__mff__shape"></a>
### Foam::mff::Shape

``` cpp
template <class T, class Point>concept Shape = requires(T t, Point p){{t.contains(p)}->std::convertible_to<bool>;}
```

Concept checking for requirements of shape types

-----