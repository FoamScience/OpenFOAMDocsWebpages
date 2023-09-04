---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  declaration: "template <class T>\nclass Foam::mff::nanoflannKDTree::adaptor;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  dtor: unspecified
  fields:
    points_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Authorative proxy to points list, avoids duplicate storage of point positions
      key: points_
      type: List<Foam::mff::nanoflannKDTree::adaptor::positionType> &
  inline:
    brief: Helper class to conform to the interface requirements of nanoflann Data
      Sources
    owner: elwardi
  namespace:
    - Foam
    - mff
  owner: __INLINED__
  tags:
    - class
  typedefs:
    positionType:
      definition: VectorSpace<Vector<T>, T, N>
      description: __INLINED__
      inline:
        description:
          - Points position type
      key: positionType
layout: class
title: adaptor<T>
---
