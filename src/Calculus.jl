#=
Calculus:
- Julia version: 1.6.2
- Author: jeff
- Date: 2021-05-08
=#

using Pkg
Pkg.add("Calculus")

using Calculus

f(x) = x^3 * exp(x) + sin(x)

println(derivative(f, 1.0))

println(second_derivative(f, 1.0))

g(x) = (x[1])^2 * sin(3x[2]) + exp(-2x[3])

println(Calculus.gradient(g, [3.0, 1.0, 2.0]))

println(hessian(g, [3.0, 1.0, 2.0]))
