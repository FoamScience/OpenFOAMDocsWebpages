---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/basicShape/basicShape.H
  inline:
    owner: elwardi
  overloads:
    ? Foam::mff::basicShape::positionType projectOnBoundary(const Foam::mff::basicShape::positionType
      &, const Foam::mff::basicShape::positionType &) const
    : arguments:
        - description: __OPTIONAL__
          name: p
          type: const Foam::mff::basicShape::positionType &
        - description: __OPTIONAL__
          name: n
          type: const Foam::mff::basicShape::positionType &
      description: __OPTIONAL__
      inline:
        note: must hard-fail if projection is not possible, not taking any chances
        return: Bisect shape bounday along line defined by `n` vector
      key: Foam::mff::basicShape::positionType projectOnBoundary(const Foam::mff::basicShape::positionType
        &, const Foam::mff::basicShape::positionType &) const
      return: __OPTIONAL__
      signature_with_names: Foam::mff::basicShape::positionType projectOnBoundary(const
        Foam::mff::basicShape::positionType & p, const Foam::mff::basicShape::positionType
        & n) const
  owner: __INLINED__
  tags:
    - method
layout: method
title: projectOnBoundary
---
