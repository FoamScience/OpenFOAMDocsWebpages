---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - __MISSING__
hyde:
  brief: __INLINED__
  declaration: "template <unsigned short Dim>\nclass Foam::mff::triSurfaceShape;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/shapes/triSurfaceShape/triSurfaceShape.H
  fields:
    debug:
      description: __MISSING__
      key: debug
      type: int
    input_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Hold the file name of the input STL file
      key: input_
      type: Foam::fileName
    scaleFactor_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Scaling factor for the input
      key: scaleFactor_
      type: Foam::scalar
    surface_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Hold the triSurface object
      key: surface_
      type: Foam::triSurface
    typeName:
      description: __MISSING__
      key: typeName
      type: const ::Foam::word
  inline:
    brief: A class to read shapes from triangulated surfaces files. We support whatever
      OpenFOAM `triSurface` supports. hyde-owner elwardi
  namespace:
    - Foam
    - mff
  owner: __MISSING__
  tags:
    - class
layout: class
title: triSurfaceShape<Dim>
---
