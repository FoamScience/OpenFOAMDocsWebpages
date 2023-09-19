---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __MISSING__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    owner: elwardi
  overloads:
    Tuple2<List<size_t>, List<Foam::scalar>> knnSearch(const Foam::mff::nanoflannKDTree::positionType &, const size_t):
      arguments:
        - description: __OPTIONAL__
          name: point
          type: const Foam::mff::nanoflannKDTree::positionType &
        - description: __OPTIONAL__
          name: k
          type: const size_t
      description: __OPTIONAL__
      inline:
        return: A tuple of (nearestPointsIndices, CorrespondingSquareDistances)
        todo: Consider caching searches here? ... and also consider checking points
          for integrity.
        warning: Wether to better return the square distances or just the distances
          is not clear
      key: Tuple2<List<size_t>, List<Foam::scalar>> knnSearch(const Foam::mff::nanoflannKDTree::positionType
        &, const size_t)
      return: __OPTIONAL__
      signature_with_names: Tuple2<List<size_t>, List<Foam::scalar>> knnSearch(const
        Foam::mff::nanoflannKDTree::positionType & point, const size_t k)
  owner: __INLINED__
  tags:
    - method
layout: method
title: knnSearch
---
