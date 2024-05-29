---
contributors:
- Elwardi
layout: library
title: meshfree/shapes/basicShape/basicShapes.C
url: /api/doc_meshfree__shapes__basicShape__basicShapes
---



``` cpp
//=== author:Elwardi ===//
using namespace Foam;

using namespace Foam::mff;

Foam::word const typeName;

template <>
static mff::basicShape<vector2D>::dictionaryConstructorCompatTableType& Foam::mff::basicShape<Foam::Vector2D<double>>::dictionaryConstructorCompatTable();

template <>
static void Foam::mff::basicShape<Foam::Vector2D<double>>::dictionaryConstructorTablePtr_construct(bool load);

template <>
static mff::basicShape<vector2D>::dictionaryConstructorPtr Foam::mff::basicShape<Foam::Vector2D<double>>::dictionaryConstructorTable(::Foam::word const& k);

;;

Foam::word const typeName;

template <>
static mff::basicShape<vector>::dictionaryConstructorCompatTableType& Foam::mff::basicShape<Foam::Vector<double>>::dictionaryConstructorCompatTable();

template <>
static void Foam::mff::basicShape<Foam::Vector<double>>::dictionaryConstructorTablePtr_construct(bool load);

template <>
static mff::basicShape<vector>::dictionaryConstructorPtr Foam::mff::basicShape<Foam::Vector<double>>::dictionaryConstructorTable(::Foam::word const& k);

;;
```

Force instantiations of basicShape for 2D and 3D shapes

<a style="visibility: hidden;" id="standardese-typename" href="#standardese-typename"></a>
## typeName

``` cpp
Foam::word const typeName;
```

2D basic shape

-----

<a style="visibility: hidden;" id="standardese-typename" href="#standardese-typename"></a>
## typeName

``` cpp
Foam::word const typeName;
```

3D basic shape

-----