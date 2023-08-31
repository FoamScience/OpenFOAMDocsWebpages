---
api_tags:
  - method
contributors:
  - __MISSING__
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/triSurfaceShape/triSurfaceShape.H
  overloads:
    bool contains(const Foam::mff::triSurfaceShape::positionType &) const:
      arguments:
        - description: __OPTIONAL__
          name: p
          type: const Foam::mff::triSurfaceShape::positionType &
      description: __OPTIONAL__
      inline:
        return: Boolean on wether the passed-in point is inside the shape
      key: bool contains(const Foam::mff::triSurfaceShape::positionType &) const
      return: __OPTIONAL__
      signature_with_names: bool contains(const Foam::mff::triSurfaceShape::positionType
        & p) const
  owner: __MISSING__
  tags:
    - method
layout: method
title: contains
---
