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
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTrees.C
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
      type: adaptor<Foam::scalar>
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
      type: nElementsHash<Foam::mff::nanoflannKDTree<2>::positionType>
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
      type: autoPtr<Foam::mff::nanoflannKDTree<2>::Tree>
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
      definition: nanoflann::L2_Simple_Adaptor<scalar, adaptor<scalar>>
      description: __INLINED__
      inline:
        description:
          - nanoflann Adaptor type
      key: Adaptor
    Tree:
      annotation:
        - protected
      definition: nanoflann::KDTreeSingleIndexDynamicAdaptor<Adaptor, adaptor<scalar>,
        2>
      description: __INLINED__
      inline:
        description:
          - Underlying tree type
      key: Tree
    positionType:
      definition: VectorSpace<Vector<Foam::scalar>, Foam::scalar, 2>
      description: __INLINED__
      inline:
        description:
          - Position type
      key: positionType
layout: class
title: nanoflannKDTree<2>
---
