---
contributors:
- Elwardi
layout: library
title: meshfree/includes/addToTemplatedRunTimeSelection.H
url: /api/doc_meshfree__includes__addToTemplatedRunTimeSelection
---



``` cpp
#define addToTemplatedRunTimeSelection_H

//=== author:Elwardi ===//
#define makeTemplatedModel(baseType, childType, TargName, Targs...)
```

A set of macros to have a variable number of template arguments working with OpenFOAM’s RunTime Selection mechanism.

Recycled from [OpenFOAM-TRTS repo](https://github.com/FoamScience/OpenFOAM-Templated-RunTime-Selection)

<a style="visibility: hidden;" id="standardese-maketemplatedmodel" href="#standardese-maketemplatedmodel"></a>
## makeTemplatedModel

``` cpp
#define makeTemplatedModel(baseType, childType, TargName, Targs...)
```

Macro to add a templated model to the run-time selection table

-----