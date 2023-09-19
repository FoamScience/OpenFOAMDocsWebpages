---
api_tags:
  - method
contributors:
  - elwardi
hyde:
  brief: __INLINED__
  defined_in_file: https://github.com/FoamScience/MeshFreeFoam/blob/master/src/meshfree/kdTrees/nanoflannKDTree/nanoflannKDTree.H
  inline:
    brief:
      - Construct from points list
    owner: elwardi
  is_ctor: true
  overloads:
    adaptor(Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor &&):
      annotation:
        - implicit
      arguments:
        - description: __OPTIONAL__
          name: unnamed-0
          type: Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor &&
          unnamed: true
      description: __OPTIONAL__
      key: adaptor(Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor &&)
      signature_with_names: adaptor(Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor
        &&)
    adaptor(const Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor &):
      annotation:
        - implicit
      arguments:
        - description: __OPTIONAL__
          name: unnamed-0
          type: const Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor &
          unnamed: true
      description: __OPTIONAL__
      key: adaptor(const Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor
        &)
      signature_with_names: adaptor(const Foam::mff::nanoflannKDTree<Foam::Vector<double>>::adaptor
        &)
    explicit adaptor(const Foam::List<Foam::Vector<double>> &):
      arguments:
        - description: __OPTIONAL__
          name: points
          type: const Foam::List<Foam::Vector<double>> &
      description: __INLINED__
      inline:
        description:
          - Construct from points list
      key: explicit adaptor(const Foam::List<Foam::Vector<double>> &)
      signature_with_names: explicit adaptor(const Foam::List<Foam::Vector<double>>
        & points)
  owner: __INLINED__
  tags:
    - method
layout: method
title: adaptor
---
