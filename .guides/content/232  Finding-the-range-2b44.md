23.2  Finding the range {#sec133 .section}
-----------------------

Suppose we want to find the launch angle that maximizes
[range]{style="font-weight:bold"}, that is, the distance the ball
travels in the air before landing. We'll use a function in the `modsim`
library, `max_bounded`, which takes a function and finds its maximum.

The function we pass to `max_bounded` should take launch angle and a
`params` object, and return range:

def range\_func(angle, params): params = Params(params, angle=angle)
system = make\_system(params) results, details =
run\_ode\_solver(system, slope\_func, events=event\_func) x\_dist =
get\_last\_value(results.x) \* m return x\_dist

`range_func` makes a new `Params` object with the given value of
`angle`. Then it makes a `System` object, calls `run_ode_solver`, and
returns the final value of `x` from the results.

We can call `range_func` directly like this:

range\_func(45, params)

And we can sweep a sequence of angles like this:

[]{#hevea_default557} []{#hevea_default558}

angles = linspace(20, 80, 21) sweep = SweepSeries()

for angle in angles: x\_dist = range\_func(angle, params) print(angle,
x\_dist) sweep\[angle\] = x\_dist

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy035.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------------------------------------------------
>   Figure 23.1: Distance from home plate as a function of launch angle, with fixed velocity.
>   -------------------------------------------------------------------------------------------
> :::
>
> []{#chap10-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [23.1](#chap10-fig03) shows the results. It looks like the
optimal angle is between 40 and 45.

We can find the optimal angle more precisely and more efficiently using
`max_bounded`, like this:

res = max\_bounded(range\_func, \[0, 90\], params)

The first parameter is the function we want to maximize. The second is
the range of values we want to search; in this case it's the range of
angles from 0 to 90. The third argument can be any object; it gets
passed along as an argument when `max_bounded` calls `range_func`.

[]{#hevea_default559}

The return value from `max_bounded` is an `ModSimSeries` that contains
the results, including `x`, which is the angle that yielded the highest
range, and `fun`, which is the value of `range_func` when it's evaluated
at `x`, that is, range when the baseball is launched at the optimal
angle.

For these parameters, the optimal angle is 41.1, which yields a range of
103.4.

[]{#hevea_default560}

