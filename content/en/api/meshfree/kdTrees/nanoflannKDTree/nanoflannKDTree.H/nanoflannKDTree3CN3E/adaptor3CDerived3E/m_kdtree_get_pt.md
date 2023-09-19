---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    owner: elwardi
  overloads:
    Foam::scalar kdtree_get_pt(const int, const int) const:
      arguments:
        - description: __OPTIONAL__
          name: idx
          type: const int
        - description: __OPTIONAL__
          name: dim
          type: const int
      description: __OPTIONAL__
      inline:
        note: Method is needed by nanoflann's API hence the different style
        return: The number of points stored
      key: Foam::scalar kdtree_get_pt(const int, const int) const
      return: __OPTIONAL__
      signature_with_names: Foam::scalar kdtree_get_pt(const int idx, const int dim)
        const
  owner: __INLINED__
  tags:
    - method
layout: method
title: kdtree_get_pt
---
