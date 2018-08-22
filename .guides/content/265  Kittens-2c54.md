26.5  Kittens {#sec149 .section}
-------------

Let's simulate a kitten unrolling toilet paper. As reference material,
see this video:
[[https://modsimpy.com/kitten]{style="font-family:monospace"}](https://modsimpy.com/kitten).

[]{#hevea_default624}

The interactions of the kitten and the paper roll are complex. To keep
things simple, let's assume that the kitten pulls down on the free end
of the roll with constant force. Also, we will neglect the friction
between the roll and the axle.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy041.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------------------------------------------------------------
>   Figure 26.2: Diagram of a roll of toilet paper, showing a force, lever arm, and the resulting torque.
>   -------------------------------------------------------------------------------------------------------
> :::
>
> []{#kitten}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [??](#kitten) shows the paper roll with
[r]{style="font-style:italic"}, [F]{style="font-style:italic"}, and τ.
As a vector quantity, the direction of τ is into the page, but we only
care about its magnitude for now.

Here's the `Params` object with the parameters we'll need:

[]{#hevea_default625}

params = Params(Rmin = 0.02 \* m, Rmax = 0.055 \* m, Mcore = 15e-3 \*
kg, Mroll = 215e-3 \* kg, L = 47 \* m, tension = 2e-4 \* N, t\_end = 180
\* s)

As before, `Rmin` is the minimum radius and `Rmax` is the maximum. `L`
is the length of the paper. `Mcore` is the mass of the cardboard tube at
the center of the roll; `Mroll` is the mass of the paper. `tension` is
the force applied by the kitten, in . I chose a value that yields
plausible results.

At
[[https://modsimpy.com/moment]{style="font-family:monospace"}](https://modsimpy.com/moment)
you can find moments of inertia for simple geometric shapes. I'll model
the cardboard tube at the center of the roll as a "thin cylindrical
shell\", and the paper roll as a "thick-walled cylindrical tube with
open ends\".

[]{#hevea_default626}

The moment of inertia for a thin shell is just [m
r]{style="font-style:italic"}^2^, where [m]{style="font-style:italic"}
is the mass and [r]{style="font-style:italic"} is the radius of the
shell.

For a thick-walled tube the moment of inertia is

+-----------------------+-----------------------+-----------------------+
| [I]{style="font-style |   ------------------- |  ([r]{style="font-sty |
| :italic"} =           | -----------------     | le:italic"}~2~^4^ − [ |
|                       |    π ρ [h]{style="fon | r]{style="font-style: |
|                       | t-style:italic"}      | italic"}~1~^4^)       |
|                       |                    2  |                       |
|                       |   ------------------- |                       |
|                       | -----------------     |                       |
+-----------------------+-----------------------+-----------------------+

where ρ is the density of the material, [h]{style="font-style:italic"}
is the height of the tube, [r]{style="font-style:italic"}~2~ is the
outer diameter, and [r]{style="font-style:italic"}~1~ is the inner
diameter.

Since the outer diameter changes as the kitten unrolls the paper, we
have to compute the moment of inertia, at each point in time, as a
function of the current radius, `r`. Here's the function that does it:

[]{#hevea_default627}

def moment\_of\_inertia(r, system): unpack(system) Icore = Mcore / 2 \*
Rmin\*\*2 Iroll = pi \* rho\_h / 2 \* (r\*\*4 - Rmin\*\*4) return Icore
+ Iroll

`rho_h` is the product of density and height, ρ
[h]{style="font-style:italic"}, which is the mass per area. `rho_h` is
computed in `make_system`:

[]{#hevea_default628} []{#hevea_default629}

def make\_system(params): unpack(params)

init = State(theta = 0 \* radian, omega = 0 \* radian/s, y = L)

area = pi \* (Rmax\*\*2 - Rmin\*\*2) rho\_h = Mroll / area k =
(Rmax\*\*2 - Rmin\*\*2) / 2 / L / radian

return System(init=init, k=k, rho\_h=rho\_h, Rmin=Rmin, Rmax=Rmax,
Mcore=Mcore, Mroll=Mroll, t\_end=t\_end)

`make_system` also computes `k` using Equation [4](#eqn4).

In the repository for this book, you will find a notebook,
`kitten.ipynb`, which contains starter code for this case study. Use it
to implement this model and check whether the results seem plausible.

