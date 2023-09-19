---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - __MISSING__
hyde:
  brief: __MISSING__
  ctor: unspecified
  declaration: "\nclass Foam::mff::nanoflannKDTree;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTrees.C
  dtor: unspecified
  fields:
    adaptor_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Adaptor object
      key: adaptor_
      type: Foam::mff::nanoflannKDTree<Foam::Vector2D<double>, Foam::Field<Foam::Vector2D<double>>>::adaptor
    hash_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Hash of the first `lastTreeSize_` points. Used to verify tree integrity
      key: hash_
      type: unsigned int
    hasher_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Tree points hasher
      key: hasher_
      type: nElementsHash<Foam::Vector2D<double>>
    lastTreeSize_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Size of tree the last time search was performed
      key: lastTreeSize_
      type: Foam::label
    tree_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Tree object
      key: tree_
      type: autoPtr<Foam::mff::nanoflannKDTree<Foam::Vector2D<double>, Foam::Field<Foam::Vector2D<double>>>::Tree>
  namespace:
    - Foam
    - mff
  owner: __MISSING__
  tags:
    - class
  typedefs:
    Adaptor:
      annotation:
        - protected
      definition: nanoflann::L2_Simple_Adaptor<scalar, adaptor>
      description: __INLINED__
      inline:
        description:
          - nanoflann Adaptor type
      key: Adaptor
    Tree:
      annotation:
        - protected
      definition: nanoflann::KDTreeSingleIndexDynamicAdaptor<Adaptor, adaptor, Vector2D<double>::nComponents>
      description: __INLINED__
      inline:
        description:
          - Underlying tree type
      key: Tree
layout: class
title: nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>>
---
