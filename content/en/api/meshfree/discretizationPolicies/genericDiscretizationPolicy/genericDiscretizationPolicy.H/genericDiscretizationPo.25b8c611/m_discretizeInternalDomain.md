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
    ? "template <class spacing:auto>\nstatic List<positionType> discretizeInternalDomain(const\
      \basicShape<positionType> &, const List<positionType> &, autoPtr<List<positionType>>,\
      \ CallableWithPositions<positionType> auto)"
    : arguments:
        - description: __OPTIONAL__
          name: shape
          type: const basicShape<positionType> &
        - description: __OPTIONAL__
          name: boundary
          type: const List<positionType> &
        - description: __OPTIONAL__
          name: existingPositions
          type: autoPtr<List<positionType>>
        - description: __OPTIONAL__
          name: spacing
          type: CallableWithPositions<positionType> auto
      description: __OPTIONAL__
      key: "template <class spacing:auto>\nstatic List<positionType> discretizeInternalDomain(const\
        \basicShape<positionType> &, const List<positionType> &, autoPtr<List<positionType>>,\
        \ CallableWithPositions<positionType> auto)"
      return: __OPTIONAL__
      signature_with_names: "template <class spacing:auto>\nstatic List<positionType>\
        \ discretizeInternalDomain(const basicShape<positionType> & shape, const List<positionType>\
        \ & boundary, autoPtr<List<positionType>> existingPositions, CallableWithPositions<positionType>\
        \auto spacing)"
  owner: __INLINED__
  tags:
    - method
layout: method
title: discretizeInternalDomain
---
