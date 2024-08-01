---
contributors: []
layout: library
title: lib2/sampleClass/sampleClass.H
url: /api/doc_lib2__sampleClass__sampleClass
---



``` cpp
namespace Foam
{
    class sampleClass;
}
```

<a style="visibility: hidden;" id="standardese-foam__sampleclass" href="#standardese-foam__sampleclass"></a>
### Foam::sampleClass

``` cpp
class sampleClass
{
public:
    enum class picker;

    sampleClass(int x);

    sampleClass(Foam::sampleClass&&) = default;

    sampleClass(Foam::sampleClass const&) = delete;

    Foam::sampleClass& operator=(Foam::sampleClass&&) = default;

    Foam::sampleClass& operator=(Foam::sampleClass const&) = delete;

    ~sampleClass();

    int x() const;

    double operator()();

    Foam::sampleClass& operator++();

    Foam::sampleClass operator-(int&);
};
```

Base interface to shape objects. A shape is basically a set of “surface” patches which define regions of closed volumes. Discretization can happen on both sides of these patches if required. @note This is an inline note @warning And an inline warning @hyde-owner elwardi

<a style="visibility: hidden;" id="standardese-foam__sampleclass__picker" href="#standardese-foam__sampleclass__picker"></a>
### Foam::sampleClass::picker

``` cpp
enum class picker
{
    stable,
    dev
};
```

Enumerating class state \!

<a style="visibility: hidden;" id="standardese-" href="#standardese-"></a>
#### 

  - `stable` - When it hasn’t benn changed for a while
  - `dev` - Actively under development

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__sampleclass" href="#standardese-foam__sampleclass__sampleclass"></a>
### Foam::sampleClass::sampleClass

``` cpp
sampleClass(int x);
```

Construct from `x`

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__sampleclass" href="#standardese-foam__sampleclass__sampleclass"></a>
### Foam::sampleClass::sampleClass

``` cpp
sampleClass(Foam::sampleClass&&) = default;
```

Default move construction

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__sampleclass" href="#standardese-foam__sampleclass__sampleclass"></a>
### Foam::sampleClass::sampleClass

``` cpp
sampleClass(Foam::sampleClass const&) = delete;
```

Deleted default copy constructor

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__operator=" href="#standardese-foam__sampleclass__operator="></a>
### Foam::sampleClass::operator=

``` cpp
Foam::sampleClass& operator=(Foam::sampleClass&&) = default;
```

Default move assignment

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__operator=" href="#standardese-foam__sampleclass__operator="></a>
### Foam::sampleClass::operator=

``` cpp
Foam::sampleClass& operator=(Foam::sampleClass const&) = delete;
```

Deleted default copyassignment

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__~sampleclass" href="#standardese-foam__sampleclass__~sampleclass"></a>
### Foam::sampleClass::~sampleClass

``` cpp
~sampleClass();
```

Destructor

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__x" href="#standardese-foam__sampleclass__x"></a>
### Foam::sampleClass::x

``` cpp
int x() const;
```

Const-access to `x` @return `x`

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__operator()" href="#standardese-foam__sampleclass__operator()"></a>
### Foam::sampleClass::operator()

``` cpp
double operator()();
```

Run computation @return $k = \\mathbb{R}^{-2.5x}$

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__operator++" href="#standardese-foam__sampleclass__operator++"></a>
### Foam::sampleClass::operator++

``` cpp
Foam::sampleClass& operator++();
```

@return A sampleClass with incremented `x`

-----

<a style="visibility: hidden;" id="standardese-foam__sampleclass__operator-" href="#standardese-foam__sampleclass__operator-"></a>
### Foam::sampleClass::operator-

``` cpp
Foam::sampleClass operator-(int&);
```

Substraction between sampleClass and ints

-----

-----