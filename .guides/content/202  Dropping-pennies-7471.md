20.2  Dropping pennies {#sec119 .section}
----------------------

As a first example, let's get back to the penny falling from the Empire
State Building, which we considered in Section [1.1](#penny). We will
implement two models of this system: first without air resistance, then
with.

[]{#hevea_default479} []{#hevea_default480}

Given that the Empire State Building is 381 high, and assuming that the
penny is dropped with velocity zero, the initial conditions are:

[]{#hevea_default481}

init = State(y=381 \* m, v=0 \* m/s)

where `y` is height above the sidewalk and `v` is velocity. The units
`m` and `s` are from the `UNITS` object provided by Pint:

[]{#hevea_default482} []{#hevea_default483}

m = UNITS.meter s = UNITS.second

The only system parameter is the acceleration of gravity:

g = 9.8 \* m/s\*\*2

In addition, we'll specify the duration of the simulation:

t\_end = 10 \* s

We need a `System` object to contain the system parameters:

[]{#hevea_default484}

system = System(init=init, g=g, t\_end=t\_end)

Now we need a slope function, and here's where things get tricky. As we
have seen, `run_ode_solver` can solve systems of first order ODEs, but
Newton's law is a second order ODE. However, if we recognize that

[]{#hevea_default485} []{#hevea_default486}

1.  Velocity, [v]{style="font-style:italic"}, is the derivative of
    position,
    [dy]{style="font-style:italic"}/[dt]{style="font-style:italic"}, and
2.  Acceleration, [a]{style="font-style:italic"}, is the derivative of
    velocity,
    [dv]{style="font-style:italic"}/[dt]{style="font-style:italic"},

we can rewrite Newton's law as a system of first order ODEs:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [v]{style="font-style:italic"} |
| --                                |                                   |
|    [dy]{style="font-style:italic" |                                   |
| }                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [a]{style="font-style:italic"} |
| --                                |                                   |
|    [dv]{style="font-style:italic" |                                   |
| }                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

And we can translate those equations into a slope function:

[]{#hevea_default487} []{#hevea_default488}

def slope\_func(state, t, system): y, v = state unpack(system)

dydt = v dvdt = -g

return dydt, dvdt

The first parameter, `state`, contains the position and velocity of the
penny. The last parameter, `system`, contains the system parameter `g`,
which is the magnitude of acceleration due to gravity.

[]{#hevea_default489}

The second parameter, `t`, is time. It is not used in this slope
function because none of the factors of the model are time dependent
(see Section [17.5](#glucose)). I include it anyway because this
function will be called by `run_ode_solver`, which always provides the
same arguments, whether they are needed or not.

[]{#hevea_default490}

The rest of the function is a straightforward translation of the
differential equations, with the substitution
[a]{style="font-style:italic"} = −[g]{style="font-style:italic"}, which
indicates that acceleration is due to gravity, in the direction of
decreasing [y]{style="font-style:italic"}. `slope_func` returns a
sequence containing the two derivatives.

Before calling `run_ode_solver`, it is a good idea to test the slope
function with the initial conditions:

dydt, dvdt = slope\_func(init, 0, system)

The result is 0 for velocity and 9.8 for acceleration. Now we can call
`run_ode_solver` like this:

results, details = run\_ode\_solver(system, slope\_func,
max\_step=0.5\*s)

The optional argument `max_step` determines the largest step size
`run_ode_solver` can use. Specifying `max_step` makes the simulation
take longer, but it makes the results look better when plotted. It has
little or no effect on accuracy.

`results` in a `TimeFrame` with two columns: `y` contains the height of
the penny; `v` contains its velocity.

[]{#hevea_default491} []{#hevea_default492}

We can plot the results like this:

def plot\_position(results): plot(results.y) decorate(xlabel='Time (s)',
ylabel='Position (m)')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy030.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------
>   Figure 20.1: Height of the penny versus time, with no air resistance.
>   -----------------------------------------------------------------------
> :::
>
> []{#chap09-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [20.1](#chap09-fig01) shows the result. Since acceleration is
constant, velocity increases linearly and position decreases
quadratically; as a result, the height curve is a parabola.

[]{#hevea_default493}

The last value of `results.y` is -109, which means we ran the simulation
too long. One way to solve this problem is to use the results to
estimate the time when the penny hits the sidewalk.

The `modsim` library provides `crossings`, which takes a `TimeSeries`
and a value, and returns a sequence of times when the series passes
through the value. We can find the time when the height of the penny is
`0` like this:

t\_crossings = crossings(results.y, 0)

The result is an array with a single value, 8.818s. Now, we could run
the simulation again with `t_end = 8.818`, but there's a better way.

