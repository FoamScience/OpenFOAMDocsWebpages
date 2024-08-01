---
title: Unit-tests docs generation
date: 2024-08-01
description: >
  Automated generation of docs for your foamUT-powered unit tests
categories: [Examples]
tags: [docs]
weight: 3
---

All the heavy-lifting is actually done bu `foamUT` itself, so if you have some unit tests under `tests/` folder, they will run and the output is converted over to the webpages under `/tests` URL. It's important to note that **your tests must compile** as we cannot generate reports on tests that do not compile.

Here is a typical workflow to generate documentation for a repository with some Unit tests:

```bash
# Clone the repo which has the code (src/ and test/ folder, where your OpenFOAM libs should reside)
git clone https://github.com/FoamScience/OpenFOAMDocsWebpages /tmp/odw
# Get a temporary clone of foamUT
git clone https://github.com/FoamScience/foamUT /tmp/ut
# Move to its root folder
cd /tmp/odw
# Source some OpenFOAM version (required)
openfoam2406
# Compile your libraries -- don't forget this important step
./Allwmake
# Set DOCS_DIR to the repository where the website is to be managed
# In this case, both are the same repository,
# also, point to where foamUT repo is located:
DOCS_DIR=$PWD FOAM_FOAMUT=/tmp/ut ./scripts/docs ut
# Take a look at the unit-tests docs page (at localhost:1313 by default)
hugo server
```

`http://localhost:1313/tests` page should then have reports on all unit-testing cases. For now, only serial runs are reported but supporting parallel tests is planned.


{{% alert color="success" %}}
If your unit-testing workflow requires the addition of custom OpenFOAM cases to perform tests on (i.e. `testCases/` exists), the docs script  will automatically pick those up instead of the default cavity provided by `foamUT`.
{{% /alert %}}
