---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nElementsHasher.H
  inline:
    owner: elwardi
  overloads:
    unsigned int operator()(const UList<T> &, unsigned int, unsigned int) const:
      arguments:
        - description: __OPTIONAL__
          name: obj
          type: const UList<T> &
        - description: __OPTIONAL__
          name: n
          type: unsigned int
        - description: __OPTIONAL__
          name: seed
          type: unsigned int
      description: __OPTIONAL__
      key: unsigned int operator()(const UList<T> &, unsigned int, unsigned int) const
      return: __OPTIONAL__
      signature_with_names: unsigned int operator()(const UList<T> & obj, unsigned
        int n, unsigned int seed) const
  owner: __INLINED__
  tags:
    - method
layout: method
title: operator()
---
