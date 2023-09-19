---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  declaration: "template <int N>\nclass Foam::mff::nanoflannKDTree;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
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
      type: nElementsHash<Foam::mff::nanoflannKDTree::positionType>
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
      type: autoPtr<Foam::mff::nanoflannKDTree::Tree>
  inline:
    brief: Wrapper around nanoflann implementation of KDTrees. This implementation
      is used by medusa and I connot do better atm.
    description:
      - This adaptor is based on examples from [nanoflann's repo](https://shorturl.at/eB134)
      - 'It is reported to be the fastest option in more than one place: [here](https://shorturl.at/jouBT),
        and here [here](https://shorturl.at/eoKV6) for example'
      - '[nanoflann](https://github.com/jlblancoc/nanoflann)'
    owner: elwardi
    warning: Efficiency of integration with MPI is not clear yet
  namespace:
    - Foam
    - mff
  owner: __INLINED__
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
        N>
      description: __INLINED__
      inline:
        description:
          - Underlying tree type
      key: Tree
    positionType:
      definition: VectorSpace<Vector<Foam::scalar>, Foam::scalar, N>
      description: __INLINED__
      inline:
        description:
          - Position type
      key: positionType
layout: class
title: nanoflannKDTree<N>
---
