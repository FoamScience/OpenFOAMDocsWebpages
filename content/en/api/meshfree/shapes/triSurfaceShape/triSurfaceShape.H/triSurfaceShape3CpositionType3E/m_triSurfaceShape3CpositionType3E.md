---
api_tags:
  - method
contributors:
  - __MISSING__
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/triSurfaceShape/triSurfaceShape.H
  inline:
    brief: _multiple descriptions_
  is_ctor: true
  overloads:
    explicit triSurfaceShape<positionType>(const Foam::dictionary &):
      arguments:
        - description: __OPTIONAL__
          name: dict
          type: const Foam::dictionary &
      description: __INLINED__
      inline:
        description:
          - Construct from dictionary
      key: explicit triSurfaceShape<positionType>(const Foam::dictionary &)
      signature_with_names: explicit triSurfaceShape<positionType>(const Foam::dictionary
        & dict)
    triSurfaceShape<positionType>(const triSurfaceShape<positionType> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const triSurfaceShape<positionType> &
      description: __INLINED__
      inline:
        description:
          - Delete default copy construct
      key: triSurfaceShape<positionType>(const triSurfaceShape<positionType> &)
      signature_with_names: triSurfaceShape<positionType>(const triSurfaceShape<positionType>
        & other)
    triSurfaceShape<positionType>(triSurfaceShape<positionType> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: triSurfaceShape<positionType> &&
      description: __INLINED__
      inline:
        description:
          - Move construct
      key: triSurfaceShape<positionType>(triSurfaceShape<positionType> &&)
      signature_with_names: triSurfaceShape<positionType>(triSurfaceShape<positionType>
        && other)
  owner: __MISSING__
  tags:
    - method
layout: method
title: triSurfaceShape<positionType>
---
