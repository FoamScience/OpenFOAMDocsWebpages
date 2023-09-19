---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/basicShape/basicShape.H
  inline:
    owner: elwardi
  overloads:
    positionType projectOnBoundary(const positionType &, const positionType &) const:
      arguments:
        - description: __OPTIONAL__
          name: p
          type: const positionType &
        - description: __OPTIONAL__
          name: n
          type: const positionType &
      description: __OPTIONAL__
      inline:
        note: must hard-fail if projection is not possible, not taking any chances
        return: Bisect shape bounday along line defined by `n` vector
      key: positionType projectOnBoundary(const positionType &, const positionType
        &) const
      return: __OPTIONAL__
      signature_with_names: positionType projectOnBoundary(const positionType & p,
        const positionType & n) const
  owner: __INLINED__
  tags:
    - method
layout: method
title: projectOnBoundary
---
