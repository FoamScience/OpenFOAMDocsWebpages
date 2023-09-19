---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/discretizationPolicies/genericDiscretizationPolicy/genericDiscretizationPolicy.H
  inline:
    owner: elwardi
  overloads:
    ? "template <class spacing:auto>\nstatic List<positionType> getRandomPointsOnSphere(Foam::label,\
      \ positionType, CallableWithPositions<positionType> auto)"
    : arguments:
        - description: __OPTIONAL__
          name: n
          type: Foam::label
        - description: __OPTIONAL__
          name: center
          type: positionType
        - description: __OPTIONAL__
          name: spacing
          type: CallableWithPositions<positionType> auto
      description: __OPTIONAL__
      key: "template <class spacing:auto>\nstatic List<positionType> getRandomPointsOnSphere(Foam::label,\
        \ positionType, CallableWithPositions<positionType> auto)"
      return: __OPTIONAL__
      signature_with_names: "template <class spacing:auto>\nstatic List<positionType>\
        \ getRandomPointsOnSphere(Foam::label n, positionType center, CallableWithPositions<positionType>\
        \auto spacing)"
  owner: __INLINED__
  tags:
    - method
layout: method
title: getRandomPointsOnSphere
---
