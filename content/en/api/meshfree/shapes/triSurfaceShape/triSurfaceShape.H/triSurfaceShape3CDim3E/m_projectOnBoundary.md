---
api_tags:
  - method
contributors:
  - __MISSING__
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/triSurfaceShape/triSurfaceShape.H
  inline:
    brief: Bisect shape bounday along line defined by the `n` vector
  overloads:
    ? Foam::mff::triSurfaceShape::positionType projectOnBoundary(const Foam::mff::triSurfaceShape::positionType
      &, const Foam::mff::triSurfaceShape::positionType &) const
    : arguments:
        - description: __OPTIONAL__
          name: p
          type: const Foam::mff::triSurfaceShape::positionType &
        - description: __OPTIONAL__
          name: n
          type: const Foam::mff::triSurfaceShape::positionType &
      description: __OPTIONAL__
      inline:
        brief: Bisect shape bounday along line defined by the `n` vector
        return: Coordinates of the projection of the input point
      key: Foam::mff::triSurfaceShape::positionType projectOnBoundary(const Foam::mff::triSurfaceShape::positionType
        &, const Foam::mff::triSurfaceShape::positionType &) const
      return: __OPTIONAL__
      signature_with_names: Foam::mff::triSurfaceShape::positionType projectOnBoundary(const
        Foam::mff::triSurfaceShape::positionType & p, const Foam::mff::triSurfaceShape::positionType
        & n) const
  owner: __MISSING__
  tags:
    - method
layout: method
title: projectOnBoundary
---
