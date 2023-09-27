---
date: 2023-09-27
title: "Lazy Evaluation: Part 1"
linkTitle: Lazy evaluation 1
weight: 7
description: >
    In this short, I explore the viability of implementing lazily-evaluated operations for MeshFreeFoam
    as opposed to the default eager evaluation for OpenFOAM fields. As this is a PhD project and I have
    limited time to produce tangible results, this is no longer a performance question. Multiple factors,
    inclucing code maintainability, have to be considered.
author: Mohammed Elwardi Fadeli ([@elwardi](https://www.linkedin.com/in/elwardi-fadeli))
tags:
  - c++
  - performance
  - openfoam
---

<div style="position:relative;padding-bottom:56.25%;">
<iframe style="width:100%;height:100%;position:absolute;left:0px;top:0px;" frameborder="0" width="100%" height="100%" allowfullscreen="" allow="autoplay" src="./LazyEvaluationAnimation.html">
</iframe>
</div>

## Motivation

I used to think of OpenFOAM's `tmp` class template as a memory management thing (which is correct). After having some suspicions, I had a discussion with [@holger](https://www.linkedin.com/in/holger-marschall-62175683/) on the details of using `tmp` to get things out of function scope. As I've skimmed through the code, I started to think of it as a lazy evaluation thing (which is not true). The main reason was that I would encounter operations of this signature `tmp<T> BINARY_FUNCTION(T vf1, T vf2)` more and more.

So, I went and added Info statements to the fields constructors, and discovered that
```cpp
a = b + c + d; // as fields
```
would not construct two (from eagerly-doing the plus operations) but just one temporary object is created. This tricked me into thinking that those operations are done lazily. In fact, The same memory is reused for both operations, which does save up on memory allocation, but memory reads/writes still get carried out at the same spots as in traditional eager evaluation.

It seems that `tmp` was originally designed to optimize memory handling which has improved a lot in newer C++ standards. A recent C++ compiler performs move construction/assignment on return statements instead of copying which makes `tmp` redundant in this regard:
```cpp
// Assume Field<scalar> has a move constructor and assignment operator
scalarField add(const scalarField& a, const scalarField& b) {
    return a + b;
}
scalarField c(add(a,b)); // This will move-construct c from result of a+b
// Older compilers will do a copy; that's why most functions return a tmp
```

Thus, `tmp` has nothing to do with lazy evaluation, but computing linear combinations of stuff is all we do in CFD, and MeshFreeFoam is no exception. Being able to compute ${\bf x_1} + a {\bf x_2}$ efficiently is crucial. Here is the landscape of how efficient we can be:
- Regular C++: compute $a {\bf x_2}$ then add it to ${\bf x_1}$. Which is too wasteful (keeps allocating and discarding temporary memory chunks).
- With OpenFOAM's `tmp`: saves on new memory allocation on addition but is still wasteful when it comes to CPU cycles.
- **(?)** With lazy evaluation: perform operations only when needed and at the tightest memory scope possible.

Despite being a .Net language, F# (and most of other functional languages) nailed on-demand computation. In an attempt to bring that level of functionality to my PhD project, I investigate how would lazy evaluation be implemented for OpenFOAM-based code.

## Lazy evaluation with expression templates

The first candidate was expression templates. I have heard of this concept countless times before. I even had my own my matrix implementation that allowed to perform operations only on a subset of rows/columns lazily. While that is not so useful now, being familiar with the concept helps. Also, with C++17 and newer standards, the implementation of expression templates has become much easier compared to five or six years back.

One inherent drawback of a rigorous implementation of expression templates is that they can add some considerable complexity to the code in regard of ordering computations:
```cpp
// Assume <<, +  and * are implemented with expression templates
a << b + c; // using << to denote that this is not an assignment; take it as a mere labeling operation
// a not used, so, let's not compute it yet
b = 1; // now this is an assignment
d << a * 2; // Which values of b were used here? b = 1; but was that intended?
```

That said, the performance benefit of implementing expression templates is enormous. It's at least 50% faster than eager evaluation for [few operations](https://github.com/FoamScience/Eager-TemplateExpr-Views-OpenFOAM/blob/80c59112d5660cd24630e4c57c6f7648c8a0b8c7/expressionTemplatesVsViewsTests.C#L30) (addition, multiplication, subtraction and division of scalar arrays).

Thus, the next best thing, is a partial template expression system which evaluates on assignment to avoid the confusion, so not truly lazy, but somewhere in between. Even then, I will have to maintain the whole system while keeping it compatible with OpenFOAM's API. Instead, I started to look at the news ranges from C++20 standard library.

## Lazy evaluation with views

In particular, C++20 introduces `views` which are special kinds of ranges which do not own their data. For our purposes, think of them as views into (parts of) the CFD fields. These were perfect for other purposes too, for example, implementation of fit-in-L2-cache subdomains for MeshFreeFoam.

The biggest problem with views is the thin compiler support. For example, to use `zip_transform` which allows to do operations on multiple views at one (eg. binary functions), we have to use at least GCC 13 and link against C++23.

The performance benefits are very close to what expression templates provide; at much less maintainability cost; but the uncertainty around them is much higher because of the thin support.

{{% alert title="Warning" color="warning" %}}
NVIDIA's HPC c++ compilers at the moment support only C++17; [using stdpar](https://developer.nvidia.com/blog/accelerating-standard-c-with-gpus-using-stdpar/) will prove difficult if decided to use views. So, for now, it's either to optimize for CPU; **or** use the GPU. We can't do both as working comfortably with views requires C++23.
{{% /alert %}}

Thus, building a system on top of views is probably not a good idea when it comes to API stability. But there is always the [ranges-v3](https://github.com/ericniebler/range-v3) library which will hopefully cover anything that the standard libraries might miss. My only concern is that I will not have enough time to wait for standard updates; if anything is missing in c++23 standard library, I will have to switch to `ranges-v3` for quite some time or ditch the idea.

## The benchmarks

You can take a look at the benchmark results at [this dedicated repository](https://github.com/FoamScience/Eager-TemplateExpr-Views-OpenFOAM/actions/runs/6332376505/job/17198740304) (at the end of compile and test step) which reflect what is shown in the animation above (`m`, `rho`, ..., etc are all scalar fields). The CI workflows there perform the benchmarks on Github machines (which are not the fastest) so, compared to HPC nodes, results are a little exaggerated.

The correctness and performance of the testing code are recorded by [foamUT](https://github.com/FoamScience/foamUT); my unit-testing framework for OpenFOAM code (hence MeshFreeFoam too).

For the sake of exploring the effects of template expressions, I stole and used a [trivial implementation](https://gieseanw.wordpress.com/2019/10/20/we-dont-need-no-stinking-expression-templates/):

{{< card code=true header="Template expression for binary operations on containers in C++" lang="CPP" footer="Not suitable for production code. I'm sure I can add syntactic sugar, but that's not the point." >}}
template<class T, class U, class Callable>
struct BinaryContainerExpression
{
    template<class Func>
    BinaryContainerExpression(const T& _left, const U& _right, Func&& _callable) :
    left_{&_left},
    right_{&_right},
    callable_{std::forward<Func>(_callable)}
    {
        assert(_left.size() == _right.size());
    }
    auto operator[](size_t index) const
    {
        return callable_((*left_)[index], (*right_)[index]);
    }
    size_t size() const
    {
        return left_->size();
    }
    const T* left_= nullptr;
    const U* right_= nullptr;
    Callable callable_;
};
{{< /card >}}

It's worth noting that on [Github machines]() the execution time of lazy evaluations is a third of that of eager evaluations; while on my local machine, it's around 50%. For the record, the test machine has the following properties:
```
System:    Kernel: 5.15.0-10078* x86_64 bits: 64 compiler: N/A Desktop: Gnome 3.36.9 
           Distro: Ubuntu 20.04.6 LTS (Focal Fossa) 
CPU:       Topology: 8-Core model: AMD Ryzen 7 5800H with Radeon Graphics bits: 64 type: MT MCP arch: Zen 3 L2 cache: 4096 KiB 
           flags: avx avx2 lm nx pae sse sse2 sse3 sse4_1 sse4_2 sse4a ssse3 svm bogomips: 102207 
           Speed: 1254 MHz min/max: 1200/3200 MHz Core speeds (MHz): 1: 1275 2: 1191 3: 1139 4: 1227 5: 1134 6: 1135 7: 1297 
           8: 1296 9: 1135 10: 1135 11: 1135 12: 1133 13: 1286 14: 1171 15: 1517 16: 1161 
```

## Conclusion

If GPU acceleration is not important, `Views` are the best course of action. This idea might fail horribly though, as everything else.
