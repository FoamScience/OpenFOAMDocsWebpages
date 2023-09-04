---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    owner: elwardi
  overloads:
    ? "template <class T>\nbool kdtree_get_bbox(T &) const"
    : arguments:
        - description: __OPTIONAL__
          name: unnamed-0
          type: T &
          unnamed: true
      description: __OPTIONAL__
      inline:
        note: if bounding box is computed elsewhere, pass it to this function
        return: Dummy method for compliance with nanoflann's API
      key: "template <class T>\nbool kdtree_get_bbox(T &) const"
      return: __OPTIONAL__
      signature_with_names: "template <class T>\nbool kdtree_get_bbox(T &) const"
  owner: __INLINED__
  tags:
    - method
layout: method
title: kdtree_get_bbox
---