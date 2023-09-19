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
    ? "template <class spacing:auto>\nstatic List<positionType> discretizeEdgeElement(const\
      \ positionType &, const positionType &, CallableWithPositions<positionType>\
      \auto)"
    : arguments:
        - description: __OPTIONAL__
          name: p1
          type: const positionType &
        - description: __OPTIONAL__
          name: p2
          type: const positionType &
        - description: __OPTIONAL__
          name: spacing
          type: CallableWithPositions<positionType> auto
      description: __OPTIONAL__
      key: "template <class spacing:auto>\nstatic List<positionType> discretizeEdgeElement(const\
        \ positionType &, const positionType &, CallableWithPositions<positionType>\
        \auto)"
      return: __OPTIONAL__
      signature_with_names: "template <class spacing:auto>\nstatic List<positionType>\
        \ discretizeEdgeElement(const positionType & p1, const positionType & p2,\
        \ CallableWithPositions<positionType> auto spacing)"
  owner: __INLINED__
  tags:
    - method
layout: method
title: discretizeEdgeElement
---
