---
title: Overview
description: Here's where you finds out if this project is for you
weight: 1
---

This page is basically a recap of what would be a user-guide on how to use [ODW](https://github.com/FoamScience/OpenFOAMDocsWebpages) to generate documentation sites for your own OpenFOAM projects.

## What is this?

We rely on [Hugo](https://gohugo.io) static site generator to build HTML docs from Markdown files we get from [standardese](https://github.com/standardese/standardese). This allows us to host such websites for free on multiple platforms (Github Pages being our main target).

The promise is that you will only have to write your docs in Markdown syntax, and you get automatic documentation updates as your code changes. Having the documentation in Markdown format also makes re-usable in a couple of other places.

{{< alert color="warning" >}}
We cannot supported full up-to-date states of the docs specifically because OpenFOAM code does not really respect this at the moment. If methods are marked with `[[deprecated]]`, this is supposed to be reflected in the docs but it is not yet enforced in most OpenFOAM forks! So, deprecation attributes are largely ignored for now.
{{< /alert >}}

## Why would I want it?

Help your users/devs know if your project will help them. We recommend answering few important questions
in the overview page to clearly communicate the purpose and limitations of your project:

* **What is it good for?**: What types of problems does your project solve? What are the main benefits of using it?

* **What is it not good for?**: For example, point out situations that might intuitively seem suited for your project, but aren't for some reason. Also mention known limitations if there are any.

* **What is it *not yet* good for?**: Highlight any useful features that are coming soon.

## Where should I go next?

We have prepared a check-list for you to go through if you decide to adapt this repository to your project:

- [ ] Get familiarized with [Hugo](https://gohugo.io/getting-started/quick-start/): the important sections are "Add content" and "Configure the site".
- [ ] The [Example page]({{% ref "/docs/getting-started/example-page/" %}}) can help you get familiarized with how you're expected to write the markdown content.
- [ ] Head to [Installation]({{% ref "/docs/getting-started/installation" %}}) and set up the needed dependencies.
- [ ] Adapt your [hugo.toml](https://github.com/FoamScience/OpenFOAMDocsWebpages/blob/main/hugo.toml) configuration file to suit your needs.
- [ ] Explore [docs folder](https://github.com/FoamScience/OpenFOAMDocsWebpages/tree/main/content/en/docs) if you want to include a "Getting-Started" section. You are free in what structure you opt for, but we recommend to keep the time to read each page under 3-minutes.
- [ ] Setup the first [blog post](https://github.com/FoamScience/OpenFOAMDocsWebpages/tree/main/content/en/blog). Maybe start with announcing switching to ODW for documenting your code! Also, we recommend to exploit the discussions section to share technical updates with your community.
- [ ] Visit [API docs generation]({{% ref "/docs/getting-started/api-docs/" %}}) to generate your first API docs.
- [ ] Visit [Unit-tests docs generation]({{% ref "/docs/getting-started/ut-docs" %}}) to generate your first documentation for Unit-tests.
- [ ] An example Github workflow that publishes the website to Github Pages. Adapt the [workflow file](https://github.com/FoamScience/OpenFOAMDocsWebpages/blob/main/.github/workflows/gh-pages.yml) to reflect your needs (e.g. the URL to publish to).
