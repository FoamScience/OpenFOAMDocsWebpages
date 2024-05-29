---
contributors:
- Elwardi
layout: library
title: meshfree/includes/TemplatedRunTimeSelection.H
url: /api/doc_meshfree__includes__TemplatedRunTimeSelection
---



``` cpp
#define TemplatedRunTimeSelection_H

//=== author:Elwardi ===//
#define defineVariadicTemplatedRunTimeSelectionTablePtr(baseType, argNames, Targs...)

//=== author:Elwardi ===//
#define defineVariadicTemplatedRunTimeSelectionTable(baseType, Targs...)
```

A set of macros to define runtime selection tables for templates with variadic arguments Recycled from [OpenFOAM-TRTS repo](https://github.com/FoamScience/OpenFOAM-Templated-RunTime-Selection)

<a style="visibility: hidden;" id="standardese-definevariadictemplatedruntimeselectiontableptr" href="#standardese-definevariadictemplatedruntimeselectiontableptr"></a>
## defineVariadicTemplatedRunTimeSelectionTablePtr

``` cpp
#define defineVariadicTemplatedRunTimeSelectionTablePtr(baseType, argNames, Targs...)
```

Macro to define a base-RTS templated model with variadic arguments

-----

<a style="visibility: hidden;" id="standardese-definevariadictemplatedruntimeselectiontable" href="#standardese-definevariadictemplatedruntimeselectiontable"></a>
## defineVariadicTemplatedRunTimeSelectionTable

``` cpp
#define defineVariadicTemplatedRunTimeSelectionTable(baseType, Targs...)
```

Macro to define a dictionary-RTS templated model with variadic arguments

-----