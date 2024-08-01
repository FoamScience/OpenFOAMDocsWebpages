---
title: Installation
date: 2024-08-01
description: >
  Install required dependencies and get your site up and running
categories: [Examples]
tags: [docs]
weight: 2
---

## Prerequisites

- [Standardese](https://github.com/standardese/standardese), which we commend you compile from source.
- An [Extended Hugo](https://github.com/gohugoio/hugo/releases) version (newer than v 0.110.0)
- [Bear](https://github.com/rizsotto/Bear) for generating compilation database while compiling the code.
- Whatever the [requirements](https://github.com/FoamScience/OpenFOAMDocsWebpages/tree/main/scripts/requirements.txt) file specifies
- [foamUT](https://github.com/FoamScience/foamUT) if you want to include docs for unit tests.

You may take a look at the [Apptainer definition file]() for a quick inspiration on how to install everything that is needed.

## Get a copy of the ODW repository

You can either use the original [ODW](https://github.com/FoamScience/OpenFOAMDocsWebpages) as a Template repository, or just fork it the usual way.

## Apptainer containers

If you want to try this out but don't want to bloat your local environment with software that you might not use, we provide an option to build an apptainer container for generating and rendering the documentation website:

```bash
git clone https://github.com/FoamScience/openfoam-apptainer-packaging /tmp/of_tainers
git clone https://github.com/FoamScience/OpenFOAMDocsWebpages /tmp/odw
cd /tmp/odw
ansible-playbook /tmp/of_tainers/build.yaml --extra-vars="original_dir=$PWD" --extra-vars="@build/config.yaml"
# To generate the API docs
apptainer run containers/projects/odw*.sif "DOCS_DIR=$PWD ./scripts/docs api && hugo server"
# Run the following to know more:
apptainer run containers/projects/odw*.sif "jq '.' /apps.json"
```
