---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/basicShape/basicShape.H
  inline:
    brief: _multiple descriptions_
    owner: elwardi
  overloads:
    basicShape<positionType> & operator=(basicShape<positionType> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: basicShape<positionType> &&
      description: __INLINED__
      inline:
        description:
          - Deleted move assignment
      key: basicShape<positionType> & operator=(basicShape<positionType> &&)
      return: __OPTIONAL__
      signature_with_names: basicShape<positionType> & operator=(basicShape<positionType>
        && other)
    basicShape<positionType> & operator=(const basicShape<positionType> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const basicShape<positionType> &
      description: __INLINED__
      inline:
        description:
          - Deleted copy assignment
      key: basicShape<positionType> & operator=(const basicShape<positionType> &)
      return: __OPTIONAL__
      signature_with_names: basicShape<positionType> & operator=(const basicShape<positionType>
        & other)
  owner: __INLINED__
  tags:
    - method
layout: method
title: operator=
---
