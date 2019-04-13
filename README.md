# CuthillMcKee.jl
The Cuthill McKee graph permutation algorithm for Julia.

Installation:
```julia
using Pkg
Pkg.add(PackageSpec(url="https://github.com/rleegates/CuthillMcKee.jl.git"))
````

Example:
```julia
using SparseArrays, CuthillMcKee, UnicodePlots
N = 500_000
A = sprand(N, N, 1/N)
A = A+A'
@time p = symrcm(A)
AP = rcmpermute(A)
display(spy(A))
display(spy(AP))
```
