---
contributors: []
layout: library
title: meshfree/kdTrees/nElementsHasher.H
url: /api/doc_meshfree__kdTrees__nElementsHasher
---



``` cpp
#define nElementsHasher_H

//=== autor:Elwardi ===//
namespace Foam
{
    namespace mff
    {
        template <class T>
        struct nElementsHash;
    }
}
```

Hashing for first n elements of list data

<a style="visibility: hidden;" id="standardese-foam__mff__nelementshash" href="#standardese-foam__mff__nelementshash"></a>
### Foam::mff::nElementsHash

``` cpp
template <class T>
struct nElementsHash
{
};
```

This template is mainly used in kdTrees wrapping Hashing algorithms from OpenFOAM for a subset of contiguous and non-contiguous data containers

-----