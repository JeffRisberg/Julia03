#=
Integration:
- Julia version: 1.6.0
- Author: jeff
- Date: 2021-05-08
=#

using Pkg
Pkg.add("QuadGK")

using QuadGK

f(x) = - cos(3 * x) + x^2 * exp(-x)

print(quadgk(f, 0.0, 1.0))
