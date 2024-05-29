---
contributors: []
layout: library
title: Entities
url: /api/entities/
---



  - [shapes::triSurfaceShape::triSurfaceShapes](/api/doc_meshfree__shapes__triSurfaceShape__triSurfaceShapes#standardese-trisurfaceshapes-c)

  - ## Namespace `Foam`
    
      - ### Namespace `Foam::mff`
        
          - [`CallableWithPositions`](/api/doc_meshfree__includes__meshlessConcepts#standardese-foam__mff__callablewithpositions) - Concept checking for requirements of callables with positions and returning a scalar
        
          - [`PositionType`](/api/doc_meshfree__includes__meshlessConcepts#standardese-foam__mff__positiontype) - Concept checking that a type is a VectorSpace instance with scalar components. The number of components needs to be a constexpr from `T::dim`
        
          - [`RAContainer`](/api/doc_meshfree__includes__meshlessConcepts#standardese-foam__mff__racontainer) - Concept checking for requirements of OpenFOAM containers with random access iterators
        
          - [`Shape`](/api/doc_meshfree__includes__meshlessConcepts#standardese-foam__mff__shape) - Concept checking for requirements of shape types
        
          - [`nElementsHash`](/api/doc_meshfree__kdTrees__nElementsHasher#standardese-foam__mff__nelementshash-t-) - This template is mainly used in kdTrees wrapping Hashing algorithms from OpenFOAM for a subset of contiguous and non-contiguous data containers
        
          - [`nanoflannKDTree`](/api/doc_meshfree__kdTrees__nanoflannKDTree__nanoflannKDTrees#standardese-foam__mff)

  - [`TemplatedRunTimeSelection_H`](/api/doc_meshfree__includes__TemplatedRunTimeSelection#standardese-templatedruntimeselection-h)

  - [`addToTemplatedRunTimeSelection_H`](/api/doc_meshfree__includes__addToTemplatedRunTimeSelection#standardese-addtotemplatedruntimeselection-h)

  - [`defineVariadicTemplatedRunTimeSelectionTable`](/api/doc_meshfree__includes__TemplatedRunTimeSelection#standardese-definevariadictemplatedruntimeselectiontable) - Macro to define a dictionary-RTS templated model with variadic arguments

  - [`defineVariadicTemplatedRunTimeSelectionTablePtr`](/api/doc_meshfree__includes__TemplatedRunTimeSelection#standardese-definevariadictemplatedruntimeselectiontableptr) - Macro to define a base-RTS templated model with variadic arguments

  - [`dictionaryConstructorCompatTable`](/api/doc_meshfree__shapes__basicShape__basicShapes#standardese-basicshapes-c)

  - [`dictionaryConstructorTable`](/api/doc_meshfree__shapes__basicShape__basicShapes#standardese-basicshapes-c)

  - [`dictionaryConstructorTablePtr_construct`](/api/doc_meshfree__shapes__basicShape__basicShapes#standardese-basicshapes-c)

  - [`makeTemplatedModel`](/api/doc_meshfree__includes__addToTemplatedRunTimeSelection#standardese-maketemplatedmodel) - Macro to add a templated model to the run-time selection table

  - [`meshlessConcepts_H`](/api/doc_meshfree__includes__meshlessConcepts#standardese-meshlessconcepts-h)

  - [`nElementsHasher_H`](/api/doc_meshfree__kdTrees__nElementsHasher#standardese-nelementshasher-h)

  - [`typeName`](/api/doc_meshfree__shapes__basicShape__basicShapes#standardese-typename) - Register a 3D triangular surface shape as a basic shape