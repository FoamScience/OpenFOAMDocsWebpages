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
    static autoPtr<basicShape<Dim>> New(const Foam::dictionary &):
      arguments:
        - description: __OPTIONAL__
          name: dict
          type: const Foam::dictionary &
      description: __OPTIONAL__
      inline:
        return: The concrete `basicShape` from dictionary as a pointer to base type
      key: static autoPtr<basicShape<Dim>> New(const Foam::dictionary &)
      return: __OPTIONAL__
      signature_with_names: static autoPtr<basicShape<Dim>> New(const Foam::dictionary
        & dict)
  owner: __INLINED__
  tags:
    - method
layout: method
title: New
---
