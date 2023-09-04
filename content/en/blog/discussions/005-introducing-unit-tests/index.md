---
date: 2023-08-29
title: Introducing unit tests with foamUT
linkTitle: FoamUT Unit tests
weight: 5
description: >
    During the development of `MeshFreeFoam`, testing new and old functionality is crucial
    to maintain the code quality. This post discusses my approach for test-proof the framework
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - openfoam
---

Well, there are three clear objects for unit testing:

- Making sure new code does not break older functionality
- Making sure new functionality works as expected
- Making sure important dependency APIs have not changed without us noticing

To this end, I originally crafted the [foamUT](https://github.com/FoamScience/foamUT) toolkit to unit-test OpenFOAM code in a streamlined way. All that is needed is to write by-library tests and supply the appropriate `Make/files` and `Make/options` files to compile them. Example tests are provided in the [MeshFreeFoam](https://github.com/FoamScience/MeshFreeFoam/tree/master/tests) repository.

Unit tests marvelously demonstrate usage of different code entities so I thought we would add them to the documentation website. Head to [tests](/tests) to browse all unit tests and see their latest states.

Currently, this feature relies on parsing Catch2 XML reports and I doubt this will change. Of course, at this point,
I'm only supporting simple test case reports. I'll expand as I go.
