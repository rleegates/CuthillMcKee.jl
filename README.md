# CuthillMcKee.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://rleegates.github.io/CuthillMcKee.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://rleegates.github.io/CuthillMcKee.jl/dev)
[![Build Status](https://travis-ci.com/rleegates/CuthillMcKee.jl.svg?branch=master)](https://travis-ci.com/rleegates/CuthillMcKee.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/rleegates/CuthillMcKee.jl?svg=true)](https://ci.appveyor.com/project/rleegates/CuthillMcKee-jl)
[![Codecov](https://codecov.io/gh/rleegates/CuthillMcKee.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/rleegates/CuthillMcKee.jl)
[![Coveralls](https://coveralls.io/repos/github/rleegates/CuthillMcKee.jl/badge.svg?branch=master)](https://coveralls.io/github/rleegates/CuthillMcKee.jl?branch=master)

The Cuthill McKee graph permutation algorithm for Julia.

The algorithm is based on the [description](http://ciprian-zavoianu.blogspot.com/2009/01/project-bandwidth-reduction.html) of the RCM permutation by Ciprian Zavoianu.

Installation (latest tagged version):
```julia
using Pkg
Pkg.add("CuthillMcKee")
```

Installation (from master):
```julia
using Pkg
Pkg.add(PackageSpec(url="https://github.com/rleegates/CuthillMcKee.jl.git"))
````

Example:
```julia
using SparseArrays, CuthillMcKee, UnicodePlots, LinearAlgebra
N = 500_000
A = sprand(N, N, 1/N)
A = A+A'+30I
b = rand(N)
@time p = symrcm(A)
ip = symrcm(A, true, true)
AP = rcmpermute(A)
@assert norm( (AP*b[p])[ip]-A*b ) < 1e-12
display(spy(A))
```
<img src="https://github.com/rleegates/Images/blob/master/prercm.png?raw=true" alt="pre_rcm_sparsity" width="200"/>

```julia
display(spy(AP))
```
<img src="https://github.com/rleegates/Images/blob/master/postrcm.png?raw=true" alt="pre_rcm_sparsity" width="200"/>
