---
contributors:
- Elwardi
layout: library
title: meshfree/kdTrees/nanoflannKDTree/nanoflannKDTrees.C
url: /api/doc_meshfree__kdTrees__nanoflannKDTree__nanoflannKDTrees
---



``` cpp
//=== author:Elwardi ===//
namespace Foam
{
    namespace mff
    {
        template <>
        class nanoflannKDTree<vector2D, List<vector2D>;

        template <>
        class nanoflannKDTree<vector2D, Field<vector2D>;

        template <>
        class nanoflannKDTree<vector, List<vector>;

        template <>
        class nanoflannKDTree<vector, Field<vector>;
    }
}
```

Force instantiations of nanoflannKDTree for 2D and 3D domains but explitcit instantiation