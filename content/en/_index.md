---
title: ODW
---

{{< blocks/cover title="Your template for documenting OpenFOAM libs" image_anchor="top" height="full" >}}
<a class="btn btn-lg btn-primary me-3 mb-4" href={{% ref "/docs" %}}>
  Get Started <i class="fas fa-arrow-alt-circle-right ms-2"></i>
</a>
<a class="btn btn-lg btn-secondary me-3 mb-4" href="https://github.com/FoamScience/OpenFOAMDocsWebpages">
  Clone Template <i class="fab fa-github ms-2 "></i>
</a>
{{< blocks/link-down color="info" >}}
{{< /blocks/cover >}}

{{% blocks/lead color="primary" %}}
OpenFOAM-Docs-Webpages (ODW) provides a simple Hugo template for **documentation-focused** static-websites tailored specifically
to document **OpenFOAM libraries**!

The promise is that running a single command will generate an **up-to-date** documentation
of the code, both for **API** section and even **unit tests**. You can version the docs
as you version the OpenFOAM code!


We do depend on few software packages:
{{% /blocks/lead %}}


{{% blocks/section color="dark" type="row" %}}
{{% blocks/feature icon="fa-lightbulb" title="Hugo" url="https://gohugo.io/" %}}
We're using [Hugo](https://gohugo.io/) to build the documentation site from Markdown files
in a blink of an eye (Or faster?)!

The website is meant to be hosted on Github Pages, and provides blog,
API and unit tests documentation sections
alongside a Getting-Started style tutorial hub.
{{% /blocks/feature %}}


{{% blocks/feature icon="fab fa-github" title="Standardese" url="https://github.com/standardese/standardese" %}}
The API docs are automatically generated using `standardese`, a next-gen Doxygen-like tool.

The actual tool is relatively easy to swap. We've tried other tools including
Doxygen and Hyde but `standardese` seems to fit our use-case.
{{% /blocks/feature %}}

{{% blocks/feature icon="fab fa-github" title="foamUT" url="https://github.com/FoamScience/foamUT" %}}
Docs for unit tests are also automatically generated if you use `foamUT`
(Catch2-based) to write your unit tests!

This is of course, an optional section of the documentation pipeline but we do
recommend that you set up some unit tests for your code anyway!
{{% /blocks/feature %}}

{{% /blocks/section %}}
