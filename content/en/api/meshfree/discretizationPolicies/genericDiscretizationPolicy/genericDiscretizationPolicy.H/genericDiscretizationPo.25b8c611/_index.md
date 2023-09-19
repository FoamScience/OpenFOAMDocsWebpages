---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  declaration: "template <class positionType>\nstruct Foam::mff::genericDiscretizationPolicy;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/discretizationPolicies/genericDiscretizationPolicy/genericDiscretizationPolicy.H
  fields:
    fillSeed:
      description: __INLINED__
      inline:
        description:
          - Seed for random filler
      key: fillSeed
      type: Foam::label
    maxPoints:
      description: __INLINED__
      inline:
        description:
          - Max number of points to add. This is a hard cap of the discretization
            algorithm
      key: maxPoints
      type: const Foam::label
  inline:
    brief: Stateless generic discretization policy for a simple geometry shape in
      3D space
    owner: elwardi
  namespace:
    - Foam
    - mff
  owner: __INLINED__
  tags:
    - class
layout: class
title: genericDiscretizationPolicy<positionType>
---
