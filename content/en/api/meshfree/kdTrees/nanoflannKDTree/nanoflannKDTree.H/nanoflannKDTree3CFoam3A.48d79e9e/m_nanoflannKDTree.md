---
api_tags:
  - method
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    brief: _multiple descriptions_
  is_ctor: true
  overloads:
    nanoflannKDTree(Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>>
            &&
      description: __INLINED__
      inline:
        description:
          - Delete Move construct
      key: nanoflannKDTree(Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>>
        &&)
      signature_with_names: nanoflannKDTree(Foam::mff::nanoflannKDTree<Foam::vector2D,
        Field<Foam::vector2D>> && other)
    nanoflannKDTree(const Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>>
            &
      description: __INLINED__
      inline:
        description:
          - Delete default copy construct
      key: nanoflannKDTree(const Foam::mff::nanoflannKDTree<Foam::vector2D, Field<Foam::vector2D>>
        &)
      signature_with_names: nanoflannKDTree(const Foam::mff::nanoflannKDTree<Foam::vector2D,
        Field<Foam::vector2D>> & other)
  owner: __OPTIONAL__
  tags:
    - method
layout: method
title: nanoflannKDTree
---
