---
date: 2023-08-18
title: Managing dependency software for `meshfreeFoam`
linkTitle: meshfreeFoam dependencies
weight: 2
description: >
  During the design phase of `MeshFreeFoam`, It was obvious that I would need
  to rely on few c++ libraries. So, I came up with a workflow to manage those
  dependencies atomically and automatically, where I could get dependency updates
  effortlessly and still keep my customizations if any.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - meshfreeFoam
  - c++
  - dependency
  - git
---

Dependency management is always a hustle. For my PhD project, I would need to live through this hell for around three years. Specifically, OpenFOAM libraries are dependencies for me and that is a big deal for few reasons:

1. Which OpenFOAM fork to use? OpenFOAM forks from OpenCFD and Foundation are changing too quickly and Foam-Extend practically gets too little updates.
2. My customizations will not fit as changes upstream OpenFOAM maintainers would be interested in merging; simply because they are mostly "experimentation" and maybe meshless-specific.
3. I only need a very small set of OpenFOAM libraries to start and I don't see a way to efficiently leverage the full set of libraries because most of them are optimized for FVM.

This practically applies to any library that is hard to merge my changes into and gets frequent updates.

## Dependency management workflow

The workflow to manage my dependencies revolves around the following concepts and ideas:
- I need a way to significantly customize OpenFOAM libs while keeping the ability to pull updates from upstream repo.
- Keep the full git history for each file I use from the upstream repo.
- Switching dependency libs should be easy. A few conflicts are fine, but no significant code refactoring should be necessary.

### How to make OpenFOAM libs available as dependencies

There are scripts to automatize this process, but I will explain the most important steps here:

We start by cloning the OpenFOAM project, filtering the paths we need (You'll need [git-filter-repo](https://github.com/newren/git-filter-repo/) for this).
```bash
git clone https://develop.openfoam.com/Development/openfoam /tmp/openfoam-scratch
cd /tmp/openfoam-scratch
git filter-repo --path COPYING --path Allwmake --path bin --path etc --path src/Allwmake \
    --path src/OSspecific --path src/OpenFOAM --path src/Pstream/ \
    --path META-INFO/ --path wmake --force
```

Next, in the target project repo, add the mutilated OpenFOAM repository as a subtree, and make a branch for `original` OpenFOAM commits there:
```bash
cd /path/to/repo/root
git subtree add --prefix dependencies/meshfree-openfoam /tmp/openfoam-scratch/ master
git checkout -b original-openfoam
```

Switch back to master (or whatever your main branch is called), do some changes, and commit:
```bash
git checkout master
git add -A
git commit -m "Update OpenFOAM compilation"
```

The changes you make will obviously be related to your target project, so it's a good idea to keep those commits in your main repository instead of managing a zillion dependency repositories.

Updates from the original repo come in two forms:
- New change commits. These may cause conflicts with our changes, so rebasing will allow us to solve them if done frequently enough.
- New libraries we want to add. These are also new commits, but we know they won't cause trouble since they only add files to `original` branch. We only have to remember to update `Allwmake` scripts to compile those new libraries.

Here is how to add `src/fileFormats` and `src/surfMesh` libraries from OpenFOAM:
```bash
# Create a new filtered repo with the new libs
rm -rf /tmp/openfoam-scratch
git clone https://develop.openfoam.com/Development/openfoam /tmp/openfoam-scratch
cd /tmp/openfoam-scratch
git filter-repo --path COPYING --path Allwmake --path bin --path etc --path src/Allwmake \
    --path src/OSspecific --path src/OpenFOAM --path src/Pstream/ \
    --path META-INFO/ --path wmake --path src/fileFormats --path src/surfMesh --force
# Merge those commits into master
cd /path/to/repo/root
git checkout original-openfoam
git subtree pull --prefix dependencies/meshfree-openfoam /tmp/openfoam-scratch/ master
git checkout master
# This merge has less chance of producing conflicts if you're just adding libs.
git merge original-openfoam
# On master, don't forget to update Allwmake to compile the new libs if necessary
```

This workflow maintains a healthy level of consistency and makes it easy to experiment with dependency library modifications (e.g. Optimization for GPU, ..., etc) and even changing compiler settings.
