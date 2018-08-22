24.2  Implementation {#sec137 .section}
--------------------

[]{#papersim}

At this point we have a pretty standard process for writing simulations
like this. First, we'll get the units we need from Pint:
[]{#hevea_default569}

radian = UNITS.radian m = UNITS.meter s = UNITS.second

And create a `Params` object with the parameters of the system:

[]{#hevea_default570}

params = Params(Rmin = 0.02 \* m, Rmax = 0.055 \* m, L = 47 \* m, t\_end
= 130 \* s)

`Rmin` and `Rmax` are the initial and final values for the radius, `r`.
`L` is the total length of the paper, and `t_end` is the length of the
simulation in time.

Then we use the `Params` object to make a `System` object:

[]{#hevea_default571} []{#hevea_default572}

def make\_system(params): unpack(params)

init = State(theta = 0 \* radian, y = 0 \* m, r = Rmin)

k = estimate\_k(params)

return System(init=init, k=k, t\_end=t\_end)

The initial state contains three variables, `theta`, `y`, and `r`.

[]{#hevea_default573}

To get started, we'll estimate a reasonable value for `k`; then in
Section [24.3](#paper_analysis) we'll figure it out exactly. Here's how
we compute the estimate:

def estimate\_k(params): unpack(params)

Ravg = (Rmax + Rmin) / 2 Cavg = 2 \* pi \* Ravg revs = L / Cavg rads = 2
\* pi \* revs k = (Rmax - Rmin) / rads return k

`Ravg` is the average radius, half way between `Rmin` and `Rmax`, so
`Cavg` is the circumference of the roll when `r` is `Ravg`.

`revs` is the total number of revolutions it would take to roll up
length `L` if `r` were constant at `Ravg`. And `rads` is just `revs`
converted to radians.

Finally, `k` is the change in `r` for each radian of revolution. For
these parameters, `k` is about `2.8e-5` .

Now we can use the differential equations from Section [24.1](#paper) to
write a slope function:

[]{#hevea_default574} []{#hevea_default575}

def slope\_func(state, t, system): theta, y, r = state unpack(system)

omega = 10 \* radian / s dydt = r \* omega drdt = k \* omega

return omega, dydt, drdt

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy037.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------------------------------------
>   Figure 24.2: Results from paper rolling simulation, showing rotation, length, and radius over time.
>   -----------------------------------------------------------------------------------------------------
> :::
>
> []{#chap11-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

As usual, the slope function takes a `State` object, a time, and a
`System` object. The `State` object contains hypothetical values of
`theta`, `y`, and `r` at time `t`. The job of the slope function is to
compute the time derivatives of these values. The time derivative of
`theta` is angular velocity, which is often denoted `omega`.

[]{#hevea_default576}

We'd like to stop the simulation when the length of paper on the roll is
`L`. We can do that with an event function that passes through 0 when
`y` equals `L`:

def event\_func(state, t, system): theta, y, r = state unpack(system)
return y - L

Now we can run the simulation like this:

results, details = run\_ode\_solver(system, slope\_func,
events=event\_func, max\_step=1\*s)

Figure [24.2](#chap11-fig01) shows the results. `theta` grows linearly
over time, as we should expect. As a result, `r` also grows linearly.
But since the derivative of `y` depends on `r`, and `r` is increasing,
`y` grows with increasing slope.

Because this system is so simple, it is almost silly to simulate it. As
we'll see in the next section, it is easy enough to solve the
differential equations analytically. But it is often useful to start
with a simple simulation as a way of exploring and checking assumptions.

In order to get the simulation working, we have to get the units right,
which can help catch conceptual errors early. And by plugging in
realistic parameters, we can detect errors that cause unrealistic
results. For example, in this system we can check:

-   The total time for the simulation is about 2 minutes, which seems
    plausible for the time it would take to roll 47 of paper.
-   The final value of `theta` is about 1250, which corresponds to about
    200 revolutions, which also seems plausible.
-   The initial and final values for `r` are consistent with `Rmin` and
    `Rmax`, as we intended when we chose `k`.

But now that we have a working simulation, it is also useful to do some
analysis.

