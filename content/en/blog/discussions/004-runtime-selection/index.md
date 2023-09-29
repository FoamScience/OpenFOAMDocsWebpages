---
date: 2023-08-28
title: Runtime selection mechanism for `MeshFreeFoam`
linkTitle: Runtime selection
weight: 4
description: >
    Extensibility of the framework is vital to its success and runtime selection is
    very important. Here, I discuss the approach taken for runtime selection.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - openfoam
---

In short, I'll stick with OpenFOAM's way of doing things when it comes to:
- RunTime Selection of models
- The plugin system (Function Objects)

## Issue 01: Dependency on the OpenFOAM version

I have decided to run with the master branch from [OpenCFD's OpenFOAM](https://develop.openfoam.com/Development/openfoam), and the very first issue I encounter is that the RunTime selection mechanism has changed somewhere between `v2012` and `v2306`. Not cool.

So, my solution is to have my own macros for runtime selection, but in the end, they need to be compatible with the version I compile my toolkit with. This is exactly why dependency management will be a challenge on its own.

## Issue 02: Going too far with OOD and effects on GPU optimization

When I look at all public projects which are optimizing for GPU offloading (Here is an [example](https://github.com/exapde/Exasim)), there seems to be no tolerance for virtual methods. Actually, NVIDIA explicitly advises moving away from object-oriented design.

While this is not an option for us, the plan is to have two modes:
- One mode employing the standard way of doing things in OpenFOAM in terms of RTS
- A second mode which either leverages `dynamicMesh` or some kind of [`JIT compiler`](https://github.com/jmmartinez/easy-just-in-time) to generate de-virtualized code at runtime.
