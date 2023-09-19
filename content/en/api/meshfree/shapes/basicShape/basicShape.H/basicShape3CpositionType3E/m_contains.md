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
    Foam::boolList contains(const List<positionType> &) const:
      arguments:
        - description: __OPTIONAL__
          name: pnts
          type: const List<positionType> &
      description: __MISSING__
      inline:
        return: A mask on wether the passed-in points are inside the shape
      key: Foam::boolList contains(const List<positionType> &) const
      return: __OPTIONAL__
      signature_with_names: Foam::boolList contains(const List<positionType> & pnts)
        const
    bool contains(const positionType &) const:
      arguments:
        - description: __OPTIONAL__
          name: p
          type: const positionType &
      description: __MISSING__
      inline:
        return: Boolean on wether the passed-in point is inside the shape
      key: bool contains(const positionType &) const
      return: __OPTIONAL__
      signature_with_names: bool contains(const positionType & p) const
  owner: __INLINED__
  tags:
    - method
layout: method
title: contains
---
