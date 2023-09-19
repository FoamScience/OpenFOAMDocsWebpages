---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    owner: elwardi
  overloads:
    bool hasSomeNeighboursWithinRadius(const positionType &, Foam::scalar):
      arguments:
        - description: __OPTIONAL__
          name: unnamed-0
          type: const positionType &
          unnamed: true
        - description: __OPTIONAL__
          name: unnamed-1
          type: Foam::scalar
          unnamed: true
      description: __OPTIONAL__
      inline:
        return: '`true` if there is at least one point in the vicinity of a point,
          considering a certain radius'
        warning: This performs a search to find K nearest points. Be careful
      key: bool hasSomeNeighboursWithinRadius(const positionType &, Foam::scalar)
      return: __OPTIONAL__
      signature_with_names: bool hasSomeNeighboursWithinRadius(const positionType
        &, Foam::scalar)
  owner: __INLINED__
  tags:
    - method
layout: method
title: hasSomeNeighboursWithinRadius
---
