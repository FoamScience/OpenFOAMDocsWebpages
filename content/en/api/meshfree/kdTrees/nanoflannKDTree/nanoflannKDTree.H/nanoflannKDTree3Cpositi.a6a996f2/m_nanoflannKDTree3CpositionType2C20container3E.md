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
    explicit nanoflannKDTree<positionType, container>(const container &, nanoflann::KDTreeSingleIndexAdaptorParams):
      arguments:
        - description: __OPTIONAL__
          name: points
          type: const container &
        - description: __OPTIONAL__
          name: params
          type: nanoflann::KDTreeSingleIndexAdaptorParams
      description: __INLINED__
      inline:
        description:
          - Construct on top of points list; which can be empty
      key: explicit nanoflannKDTree<positionType, container>(const container &, nanoflann::KDTreeSingleIndexAdaptorParams)
      signature_with_names: explicit nanoflannKDTree<positionType, container>(const
        container & points, nanoflann::KDTreeSingleIndexAdaptorParams params)
    nanoflannKDTree<positionType, container>(const nanoflannKDTree<positionType, container> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const nanoflannKDTree<positionType, container> &
      description: __INLINED__
      inline:
        description:
          - Delete default copy construct
      key: nanoflannKDTree<positionType, container>(const nanoflannKDTree<positionType,
        container> &)
      signature_with_names: nanoflannKDTree<positionType, container>(const nanoflannKDTree<positionType,
        container> & other)
    nanoflannKDTree<positionType, container>(nanoflannKDTree<positionType, container> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: nanoflannKDTree<positionType, container> &&
      description: __INLINED__
      inline:
        description:
          - Delete Move construct
      key: nanoflannKDTree<positionType, container>(nanoflannKDTree<positionType,
        container> &&)
      signature_with_names: nanoflannKDTree<positionType, container>(nanoflannKDTree<positionType,
        container> && other)
  owner: __INLINED__
  tags:
    - method
layout: method
title: nanoflannKDTree<positionType, container>
---
