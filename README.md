# Template for OpenFOAM API docs using Hugo/Docsy and Standardese

This is a simple Hugo template for generating a static website using
the Docsy theme. Documentation is generated as Markdown files using Hyde
and can be changed manually while keeping the changes between consecutive docs builds.

## The recommended workflow

### Install prerequisites

- Get a recent [**extended** Hugo release](https://github.com/gohugoio/hugo/releases)
- Build [**Standardese**](https://github.com/standardese/standardese) and install its
  binary somewhere on your `PATH`.
- Install [**Bear**](https://github.com/rizsotto/Bear)
- Install [`jq`](https://jqlang.github.io/jq/download/) and the following Python dependencies:
  ```bash
  pip install python-frontmatter gitpython mdformat-gfm mdformat-frontmatter mdformat-footnote
  ```

### Generate the documentation

Typically you will want to have a script in your code repo to generate both API and unit-test docs:
```bash
FOAM_FOAMUT=/tmp/ut DOCS_DIR=~/repos/MeshFreeFoam-Docs/ ./scripts/docs.sh
```

You can also have wiki-like content in `content/en/docs` and have a blog section at `content/en/blog`.

Go `hugo server` and open `http://localhost:1313/` in your browser to see the results.
For production runs, make sure to change the settings in `hugo.toml` to reflect your needs.
