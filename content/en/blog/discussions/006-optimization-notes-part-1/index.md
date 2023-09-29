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

When it comes to k-nearest neighbor (KNN) searches with unsorted radius queries in C++, I've decided to utilize [nanoflann](https://github.com/jlblancoc/nanoflann) as the backend for these operations.

Their API is user-friendly, but there's a specific challenge with the dynamic `KdTree`. During my testing of the KdTree wrapper, I noticed that modifying the list of point positions for searches can be tricky. To address this, I've implemented a solution where I hash the current list and compare it before each KNN search.

If the point list has undergone significant changes, the KdTree index becomes invalid and needs resetting. However, if the list only receives new points without alterations to old ones, I simply add the new points to the index.

At this point, I have three key unanswered questions:
- What's the efficiency of hashing the point list?
- How efficient is OpenFOAM's implementation of the Jenkins hasher?
- Is resetting the KdTree index efficient compared to removing all points and adding the new ones?
