#=
LightGraphs:
- Julia version: 1.6.0
- Author: jeff
- Date: 2021-02-11
=#
using LightGraphs
import Cairo, Fontconfig

g = SimpleGraph(7);
println(g)

add_edge!(g, 1, 2);

add_edge!(g, 2, 3);

add_edge!(g, 3, 4);

add_edge!(g, 4, 5);

add_edge!(g, 5, 1);

add_edge!(g, 5, 6)

add_edge!(g, 3, 7)

h = SimpleGraphFromIterator(edges(g));

for edge in edges(h)
    println(edge)
end

using GraphPlot, Compose

nodelabel = 1:nv(g)

# The LightGraph code will attempt to place the nodes of the network
# but there will be random changes each time.
draw(PNG("lightgraph.png", 16cm, 16cm), gplot(g, nodelabel=nodelabel))
