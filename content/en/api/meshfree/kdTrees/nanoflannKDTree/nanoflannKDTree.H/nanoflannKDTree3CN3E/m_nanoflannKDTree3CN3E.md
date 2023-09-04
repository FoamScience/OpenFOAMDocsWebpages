---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    brief: _multiple descriptions_
    owner: elwardi
  is_ctor: true
  overloads:
    nanoflannKDTree<N>(List<Foam::mff::nanoflannKDTree::positionType> &, nanoflann::KDTreeSingleIndexAdaptorParams):
      arguments:
        - description: __OPTIONAL__
          name: points
          type: List<Foam::mff::nanoflannKDTree::positionType> &
        - description: __OPTIONAL__
          name: params
          type: nanoflann::KDTreeSingleIndexAdaptorParams
      description: __INLINED__
      inline:
        description:
          - Construct on top of points list; which can be empty
      key: nanoflannKDTree<N>(List<Foam::mff::nanoflannKDTree::positionType> &, nanoflann::KDTreeSingleIndexAdaptorParams)
      signature_with_names: nanoflannKDTree<N>(List<Foam::mff::nanoflannKDTree::positionType>
        & points, nanoflann::KDTreeSingleIndexAdaptorParams params)
    nanoflannKDTree<N>(const nanoflannKDTree<N> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const nanoflannKDTree<N> &
      description: __INLINED__
      inline:
        description:
          - Delete default copy construct
      key: nanoflannKDTree<N>(const nanoflannKDTree<N> &)
      signature_with_names: nanoflannKDTree<N>(const nanoflannKDTree<N> & other)
    nanoflannKDTree<N>(nanoflannKDTree<N> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: nanoflannKDTree<N> &&
      description: __INLINED__
      inline:
        description:
          - Delete Move construct
      key: nanoflannKDTree<N>(nanoflannKDTree<N> &&)
      signature_with_names: nanoflannKDTree<N>(nanoflannKDTree<N> && other)
  owner: __INLINED__
  tags:
    - method
layout: method
title: nanoflannKDTree<N>
---
