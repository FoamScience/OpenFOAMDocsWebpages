# Automated API and unit-tests documentation generation for OpenFOAM libraries

This is a simple Hugo template for generating a static website using
the Docsy theme. Documentation is generated as Markdown files using Standardese
and can be changed manually while keeping the changes between consecutive docs builds.

## Documentation

Head to the [example site](https://foamscience.github.io/OpenFOAMDocsWebpages) to get started.

## Important notes

- It's important that you have no broken URLs on your website, watch out for 404 HTML error codes when:
  ```bash
  hugo server --baseURL localhost:1313/OpenFOAMDocsWebpages/
  npm install -g broken-link-checker 
  blc http://localhost:1313/OpenFOAMDocsWebpages -ro -f --exclude discord --exclude slack
  ```
