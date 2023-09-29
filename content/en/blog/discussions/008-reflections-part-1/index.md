---
date: 2023-09-29
title: "A reflection system for MeshFreeFoam: Part 1"
linkTitle: "Reflections for MeshFreeFoam 1"
weight: 8
description: >
    Discussing the very first steps of implementing a reflection system for C++ classes. Possible uses, limitations,
    and future plans are laid out in this post.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - quality-of-life
  - gui
  - openfoam
---

## Motivation

[Lazy evaluation](/blog/2023/09/27/lazy-evaluation-part-1/) is not the only thing I envy in `.Net` languages. It's one of two things, the other being **their runtime reflection systems**. This feature is not exclusive to .Net languages; it's found in all reflective languages (e.g., JavaScript, Java, Python, Go, Julia, etc.), except for C++.

The perfect implementation of a reflection system for OpenFOAM-based code will:

1. Be fully implemented at compile-time (with zero runtime cost) but allow access to reflection information at runtime.
2. Be compatible with the runtime selection mechanism.
3. Support automatic serialization to JSON/XML for creating objects from a Web UI (or a TUI for that matter).
4. Support building efficient proxy classes for objects to expose (private? protected?) fields to Web UI widgets.

## Current plans

It doesn't seem like a lot of work, but the challenges lie in meeting my specific requirements 1 and 2 above. There are two ways to achieve this:

1. [Building a C++ Reflection System in One Weekend Using Clang and LLVM](https://youtu.be/DUiUBt-fqEY) demonstrates a method using compiler magic to generate reflection code. It parses the headers' AST and generates C++ files to include in the final compilation units. This approach is not preferred due to two main reasons:
   - It requires annotating classes and fields for reflection.
   - A separate tool must run on the classes' headers with the correct compiler flags set to generate the reflection code, adding maintenance overhead.

2. [refl-cpp](https://github.com/veselink1/refl-cpp) implements a version without parsing the AST, which is the preferred approach. It will serve as the main inspiration for developing the reflection system.

Work on this front will begin as soon as I can visualize the meshfree domain (i.e., the particles) with ParaView. Immediate issues that must be addressed include:
- Ensuring both the reflection system and the runtime selection mechanism can coexist smoothly.
- Exposing fields of default OpenFOAM types (e.g., `List`, `triSurface`, etc.), which may not be trivial.
