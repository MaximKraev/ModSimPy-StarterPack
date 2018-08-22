10.5  Tree growth {#sec66 .section}
-----------------

This case study is based on "Height-Age Curves for Planted Stands of
Douglas Fir, with Adjustments for Density\", a working paper by
Flewelling, Collier, Gonyea, Marshall, and Turnblom, available from
[[https://modsimpy.com/trees]{style="font-family:monospace"}](https://modsimpy.com/trees).

It provides "site index curves\", which are curves that show the
expected height of the tallest tree in a stand of Douglas firs as a
function of age, for a stand where the trees are the same age.

Depending on the quality of the site, the trees might grow more quickly
or slowing. So each curve is identified by a "site index\" that
indicates the quality of the site.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy012.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------
>   Figure 10.3: Site index curves for tree growth.
>   -------------------------------------------------
> :::
>
> []{#trees-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [10.3](#trees-fig01) shows site curves for three different site
indices. The goal of this case study is to explain the shape of these
curves; that is, why trees grow the way they do.

As a starting place, let's assume that the ability of the tree to gain
mass is limited by the area it exposes to sunlight, and that the growth
rate (in mass) is proportional to that area. In that case we can write:
[m]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ =
[m]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + α
[A]{style="font-style:italic"} where
[m]{style="font-style:italic"}~[n]{style="font-style:italic"}~ is the
mass of the at time step [n]{style="font-style:italic"},
[A]{style="font-style:italic"} is the area exposed to sunlight, and α is
an unknown growth parameter.

To get from [m]{style="font-style:italic"} to
[A]{style="font-style:italic"}, I'll make the additional assumption that
mass is proportional to height raised to an unknown power:
[m]{style="font-style:italic"} = β
[h]{style="font-style:italic"}^[D]{style="font-style:italic"}^ where
[h]{style="font-style:italic"} is height, β is an unknown constant of
proportionality, and [D]{style="font-style:italic"} is the dimension
that relates height and mass. I start by assuming
[D]{style="font-style:italic"}=3, but then revisit that assumption.

Finally, we'll assume that area is proportional to height squared:

[A]{style="font-style:italic"} = γ [h]{style="font-style:italic"}^2^

I specify height in feet, and choose units for mass and area so that β=1
and γ=1. Putting all that together, we can write a difference equation
for height:

[h]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~^[D]{style="font-style:italic"}^
=
[h]{style="font-style:italic"}~[n]{style="font-style:italic"}~^[D]{style="font-style:italic"}^
+ α [h]{style="font-style:italic"}~[n]{style="font-style:italic"}~^2^

The solution to this equation turns out to be close to a straight line,
which is not a bad model for the growth curves. But the model that trees
can grow forever, and we know that's not true. As trees get taller, it
gets harder for them to move water and nutrients against the force of
gravity, and their growth slows.

We can model this effect by adding a factor to the model similar to what
we saw in the logistic model of population growth. Instead of assuming:

[m]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ =
[m]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + α
[A]{style="font-style:italic"}

Let's assume

[m]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ =
[m]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + α
[A]{style="font-style:italic"} (1 − [h]{style="font-style:italic"} /
[K]{style="font-style:italic"})

where [K]{style="font-style:italic"} is similar to the carrying capacity
of the logistic model. As [h]{style="font-style:italic"} approaches
[K]{style="font-style:italic"}, the factor (1 −
[h]{style="font-style:italic"}/[K]{style="font-style:italic"}) goes to
0, causing growth to level off.

In the repository for this book, you'll find a notebook called
`trees.ipynb` that implements both models and uses them to fit the data.
There are no exercises in this case study; it is mostly meant as an
example of what you can do with the tools we have so far, and a preview
of what we will be able to do with the tools in the next few chapters.

