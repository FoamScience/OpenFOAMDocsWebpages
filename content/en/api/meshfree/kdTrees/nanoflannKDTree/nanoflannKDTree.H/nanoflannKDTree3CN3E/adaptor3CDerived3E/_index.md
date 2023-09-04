---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  declaration: "template <class Derived>\nclass Foam::mff::nanoflannKDTree::adaptor;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/https:/github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  dtor: unspecified
  fields:
    points_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Authorative proxy to CRTP type, avoids duplicate storage of point positions
      key: points_
      type: Derived &
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
      definition: nanoflannKDTree<N>::positionType
      description: __INLINED__
      inline:
        description:
          - Points position type
      key: positionType
layout: class
title: adaptor<Derived>
---
