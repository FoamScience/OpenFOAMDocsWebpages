---
date: 2023-08-29
title: "Optimization notes: Part 1"
linkTitle: Optimization notes 1
weight: 6
description: >
    At the very stages of developing MeshFreeFoam, the focus was on getting things done
    quickly, however, opportunities for optimization were not left alone. This post is a compilation
    of the probable areas that would need optimizing for performance in the futute.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - openfoam
---

## KdTree and radius-based searches

After sweeping the existing C++ libraries capable of doing k-nearest neighbor (KNN) search with unsorted radius queries, I have reached the conclusion of using [nanoflann](https://github.com/jlblancoc/nanoflann) as a backend for such searches.

Their API is nice and easy to use but with one specific caveat: The dynamic `KdTree` is not trivial to use. After putting up some unit tests to the KdTree wrapper, I quickly discovered that changing the list of point positions we perform searches against is not fun. My current solution is to hash the current content of the list and check it again on each KNN search!

If the list of points has been radically changed, the KdTree index will be invalid; so we need to reset it. But, if the list is only being appended to (no changes to old elements), the new points are added to the index.

At this point, I have mainly three unanswered question:
- How efficient is to hash the point list?
- How efficient OpenFOAM's implementation of Jenkins hasher is?
- How efficient is to reset the KdTree index (compared to remove all points and add add the new ones)?
