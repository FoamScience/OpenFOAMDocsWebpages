---
title: API docs generation
date: 2024-08-01
description: >
  Automated generation of docs for your classes and function signatures
categories: [Examples]
tags: [docs]
weight: 3
---

{{% pageinfo %}}
API documentation (somewhat) relies on in-comments documentation written by the developer, but `standardese` seems to check it against the actual function signature to make sure the comments don't get outdated. We think that this is still a nice compromise.
{{% /pageinfo %}}


Here is a typical workflow to generate API documentation for a repository that manages both the code and documentation website:

{{% alert color="warning" %}}
Note that it's **not recommended** to merge the actual code with the docs website. This is illustrated here just to show you how to generate API docs for the sample code provided with this repository.
{{% /alert %}}

```bash
# Clone the repo which has the code (src/ folder, where your OpenFOAM libs should reside)
git clone https://github.com/FoamScience/OpenFOAMDocsWebpages /tmp/odw
# Move to its root folder
cd /tmp/odw
# Source some OpenFOAM version (required)
openfoam2406
# Compile your code, this command will have to generate a compile_commands_.json
# for each library
./Allwmake
# Set DOCS_DIR to the repository where the website is to be managed
# In this case, both are the same repository:
DOCS_DIR=$PWD ./scripts/docs api
# Take a look at the API docs (at localhost:1313 by default)
hugo server
```

`http://localhost:1313/api` page should then have three sections reflecting the sample code provided [here](https://github.com/FoamScience/OpenFOAMDocsWebpages/tree/main/src):
- Entities, listing all of your name-spaced code entities. This page is particularly useful with the search functionality turned on in your `hugo.toml`
- Header files, documentation each "important file". This feature is still work-in-progress in terms of what files to pick.
- `Standardese` Modules.

{{% alert color="warning" %}}
It might not be this easy for your own code. What this actually does is to try and partially compile your code with [clang](https://clang.llvm.org/doxygen/group__CINDEX.html) to figure out your AST. For it to work, your code needs to compile with clang.
{{% /alert %}}

The provided sample code is compiled with the following `Allwmake` script. Note that it is important to generate `compile_commands.json` for each library so that `standardese` can get hold of all the included header files:
```bash
#!/bin/sh
cd "${0%/*}" || exit

wclean src/lib1
cd src/lib1
bear -- wmake libso
cd -
wclean src/lib2
cd src/lib1
bear -- wmake libso
cd -
```


On the API pages, and on most of the other pages, we keep information about who wrote the code and documentation through `@owner` tag in inline comments. Add yourself to [contributers](https://github.com/FoamScience/OpenFOAMDocsWebpages/tree/main/content/en/contributors) by adding a folder with your name there that has a `_index.md` holding your metadata and a short bio if you like. Blog post authors must be specified explicitly in the front matter, and we don't track authors for the Getting-Started/User-Guide section - but that information is still available through git if you ever need it.
