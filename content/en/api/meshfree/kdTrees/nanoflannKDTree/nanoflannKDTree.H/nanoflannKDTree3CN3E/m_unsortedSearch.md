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
    List<Tuple2<size_t, Foam::scalar>> unsortedSearch(const Foam::mff::nanoflannKDTree::positionType &, const Foam::scalar):
      arguments:
        - description: __OPTIONAL__
          name: point
          type: const Foam::mff::nanoflannKDTree::positionType &
        - description: __OPTIONAL__
          name: radius
          type: const Foam::scalar
      description: __OPTIONAL__
      inline:
        return: A tuple of (nearestPointsIndices, CorrespondingSquareDistances)
        todo: Consider caching searches here? ... and also consider checking points
          for integrity.
        warning: Wether to better return the square distances or just the distances
          is not clear
      key: List<Tuple2<size_t, Foam::scalar>> unsortedSearch(const Foam::mff::nanoflannKDTree::positionType
        &, const Foam::scalar)
      return: __OPTIONAL__
      signature_with_names: List<Tuple2<size_t, Foam::scalar>> unsortedSearch(const
        Foam::mff::nanoflannKDTree::positionType & point, const Foam::scalar radius)
  owner: __INLINED__
  tags:
    - method
layout: method
title: unsortedSearch
---
