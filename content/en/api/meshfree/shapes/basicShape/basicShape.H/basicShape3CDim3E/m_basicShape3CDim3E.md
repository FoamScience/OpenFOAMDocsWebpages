---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam.git/blob/master/src/meshfree/shapes/basicShape/basicShape.H
  inline:
    brief: _multiple descriptions_
    owner: elwardi
  is_ctor: true
  overloads:
    basicShape<Dim>(basicShape<Dim> &&):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: basicShape<Dim> &&
      description: __INLINED__
      inline:
        description:
          - Move construct
      key: basicShape<Dim>(basicShape<Dim> &&)
      signature_with_names: basicShape<Dim>(basicShape<Dim> && other)
    basicShape<Dim>(const basicShape<Dim> &):
      annotation:
        - deleted
      arguments:
        - description: __OPTIONAL__
          name: other
          type: const basicShape<Dim> &
      description: __INLINED__
      inline:
        description:
          - Delete default copy construct
      key: basicShape<Dim>(const basicShape<Dim> &)
      signature_with_names: basicShape<Dim>(const basicShape<Dim> & other)
    explicit basicShape<Dim>(const Foam::dictionary &):
      arguments:
        - description: __OPTIONAL__
          name: dict
          type: const Foam::dictionary &
      description: __INLINED__
      inline:
        description:
          - Construct from dictionary
      key: explicit basicShape<Dim>(const Foam::dictionary &)
      signature_with_names: explicit basicShape<Dim>(const Foam::dictionary & dict)
  owner: __INLINED__
  tags:
    - method
layout: method
title: basicShape<Dim>
---
