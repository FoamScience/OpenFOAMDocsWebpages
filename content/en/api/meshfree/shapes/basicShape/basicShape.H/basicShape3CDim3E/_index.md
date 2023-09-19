---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  declaration: "template <unsigned short Dim>\nclass Foam::mff::basicShape;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/basicShape/basicShape.H
  fields:
    boundaryNames_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - A list of boundary surface names
      key: boundaryNames_
      type: Foam::wordList
    debug:
      description: __MISSING__
      key: debug
      type: int
    dict_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Configuration dictionary
      key: dict_
      type: const Foam::dictionary &
    dictionaryConstructorCompatTablePtr_:
      description: __MISSING__
      key: dictionaryConstructorCompatTablePtr_
      type: std::unique_ptr<dictionaryConstructorCompatTableType>
    dictionaryConstructorTablePtr_:
      description: __MISSING__
      key: dictionaryConstructorTablePtr_
      type: Foam::mff::basicShape::dictionaryConstructorTableType *
    typeName:
      description: __MISSING__
      key: typeName
      type: const ::Foam::word
  inline:
    brief: Base interface to shape objects.
    note: This template keeps no information about shape boundaries to avoid duplicate
      discretization when having shape-to-shape interfaces. Boundary discretization
      is handled by the grid generator.
    owner: elwardi
    warning: An abstract class template
  namespace:
    - Foam
    - mff
  owner: __INLINED__
  tags:
    - class
  typedefs:
    dictionaryConstructorCompatTableType:
      definition: ::Foam::HashTable<std::pair< ::Foam::word, int>, ::Foam::word, ::Foam::Hash<
        ::Foam::word>>
      description: __INLINED__
      inline:
        description:
          - '---------------------------------------------------------------------------*
            \ Class HashTable Declaration \ *---------------------------------------------------------------------------'
      key: dictionaryConstructorCompatTableType
    dictionaryConstructorPtr:
      definition: autoPtr<basicShape<Dim>> (*)(const Foam::dictionary &)
      description: __MISSING__
      key: dictionaryConstructorPtr
    dictionaryConstructorTableType:
      definition: ::Foam::HashTable<dictionaryConstructorPtr, ::Foam::word, ::Foam::Hash<
        ::Foam::word>>
      description: __MISSING__
      key: dictionaryConstructorTableType
    positionType:
      definition: VectorSpace<Vector<Foam::scalar>, Foam::scalar, Dim>
      description: __INLINED__
      inline:
        description:
          - Point position type
      key: positionType
layout: class
title: basicShape<Dim>
---
