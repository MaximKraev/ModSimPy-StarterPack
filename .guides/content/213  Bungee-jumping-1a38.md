21.3  Bungee jumping {#sec124 .section}
--------------------

[]{#bungee}

Suppose you want to set the world record for the highest "bungee dunk\",
which is a stunt in which a bungee jumper dunks a cookie in a cup of tea
at the lowest point of a jump. An example is shown in this video:
[[https://modsimpy.com/dunk]{style="font-family:monospace"}](https://modsimpy.com/dunk).

Since the record is 70, let's design a jump for 80. We'll start with the
following modeling assumptions:

-   Initially the bungee cord hangs from a crane with the attachment
    point 80 above a cup of tea.
-   Until the cord is fully extended, it applies no force to the jumper.
    It turns out this might not be a good assumption; we will revisit
    it.
-   After the cord is fully extended, it obeys Hooke's Law; that is, it
    applies a force to the jumper proportional to the extension of the
    cord beyond its resting length. See
    [[https://modsimpy.com/hooke]{style="font-family:monospace"}](https://modsimpy.com/hooke).
-   The mass of the jumper is 75.
-   The jumper is subject to drag force, as in the previous model, so
    that their terminal velocity is 60.

Our objective is to choose the length of the cord, `L`, and its spring
constant, `k`, so that the jumper falls all the way to the tea cup, but
no farther!

We'll start with the length of the bungee cord, `L` at 25 and spring
constant, `k` at 40. Here's a `Params` object with all of these
parameters:

params = Params(y\_attach = 80 \* m, v\_init = 0 \* m / s, g = 9.8 \*
m/s\*\*2, mass = 75 \* kg, area = 1 \* m\*\*2, rho = 1.2 \* kg/m\*\*3,
v\_term = 60 \* m / s, L = 25 \* m, k = 40 \* N / m)

And here's a version of `make_system` that uses `v_term` to compute
`C_d`:

def make\_system(params): unpack(params)

C\_d = 2 \* mass \* g / (rho \* area \* v\_term\*\*2) init =
State(y=y\_attach, v=v\_init) t\_end = 20 \* s

return System(params, C\_d=C\_d, init=init, t\_end=t\_end)

We can run it like this:

system = make\_system(params)

We need a function to compute spring force based on the altitude of the
jumper, `y`:

def spring\_force(y, system): unpack(system) distance\_fallen =
y\_attach - y if distance\_fallen \<= L: return 0 \* N

extension = distance\_fallen - L f\_spring = k \* extension return
f\_spring

`distance_fallen` is the distance of the jumper from the attachment
point. If the cord is not fully extended, the spring force is 0.
Otherwise we compute the extension of the cord, `extension`, and the
spring force, `f_spring`.

I'll also define a function to compute drag force:

def drag\_force(v, system): unpack(system) f\_drag = -np.sign(v) \* rho
\* v\*\*2 \* C\_d \* area / 2 return f\_drag

`drag_force` uses the NumPy function `sign`, which returns 1 if the
argument is positive, -1 if it is negative, and 0 if it is 0. This
ensures that the drag force is always in the opposite direction of
velocity.

[]{#hevea_default514} []{#hevea_default515}

Now here's the slope function:

def slope\_func(state, t, system): y, v = state unpack(system)

a\_drag = drag\_force(v, system) / mass a\_spring = spring\_force(y,
system) / mass dvdt = -g + a\_drag + a\_spring

return v, dvdt

`slope_func` uses `spring_force` and `drag_force` to compute forces,
then divides by `mass` to get accelerations.

We can run the simulation like this:

ts = linspace(0, system.t\_end, 301) results, details =
run\_ode\_solver(system, slope\_func, max\_step=0.3\*s)

Again, I use `max_step` so the results look better when plotted.
Figure [21.2](#chap09-fig03) shows the results.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy032.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------
>   Figure 21.2: Position and velocity of the bungee jumper.
>   ----------------------------------------------------------
> :::
>
> []{#chap09-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

We can find the altitude of the jumper at the lowest point like this:

min(results.y)

For the parameters we chose, the jumper bottoms out at about 5, so we
need to increase `L` or decrease `k`. In the notebook for this chapter,
you'll have to a chance to find the best parameters for the bungee dunk.

