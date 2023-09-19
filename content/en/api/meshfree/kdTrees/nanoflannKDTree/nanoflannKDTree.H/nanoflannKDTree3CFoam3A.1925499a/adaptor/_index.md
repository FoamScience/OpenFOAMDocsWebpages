---
api_namespaces:
  - Foam::mff
api_tags:
  - class
contributors:
  - elwardi
hyde:
  annotation:
    - protected
  brief: __INLINED__
  declaration: "\nclass Foam::mff::nanoflannKDTree<Foam::Vector<double>, Foam::Field<Foam::Vector<double>>>::adaptor;"
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  dtor: unspecified
  fields:
    points_:
      annotation:
        - protected
      description: __INLINED__
      inline:
        description:
          - Const proxy to points list, avoids duplicate storage of point positions
      key: points_
      type: const Foam::Field<Foam::Vector<double>> &
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
layout: class
title: adaptor
---
