22.4  Trajectories {#sec130 .section}
------------------

We can plot the [x]{style="font-style:italic"} and
[y]{style="font-style:italic"} components of position like this:

plot(results.x, label='x') plot(results.y, label='y')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy033.png)
> :::
>
> ::: {.caption}
>   ---------------------------------------------------------------------------------------------------------------------------------------------------------
>   Figure 22.1: Simulated baseball flight, [x]{style="font-style:italic"} and [y]{style="font-style:italic"} components of position as a function of time.
>   ---------------------------------------------------------------------------------------------------------------------------------------------------------
> :::
>
> []{#chap10-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [22.1](#chap10-fig01) shows the result. As expected, the
[x]{style="font-style:italic"} component increases monotonically, with
decreasing velocity. The [y]{style="font-style:italic"} position climbs
initially and then descends, falling slightly below 0 after 5.1.

[]{#hevea_default549}

Another way to view the same data is to plot the
[x]{style="font-style:italic"} component on the x-axis and the
[y]{style="font-style:italic"} component on the y-axis, so the plotted
line follows the trajectory of the ball through the plane:

plot(results.x, results.y, label='trajectory')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy034.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------
>   Figure 22.2: Simulated baseball flight, trajectory plot.
>   ----------------------------------------------------------
> :::
>
> []{#chap10-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [22.2](#chap10-fig02) shows this way of visualizing the results,
which is called a [trajectory plot]{style="font-weight:bold"} (see
[[https://modsimpy.com/trajec]{style="font-family:monospace"}](https://modsimpy.com/trajec)).

[]{#hevea_default550}

A trajectory plot can be easier to interpret than a time series plot,
because it shows what the motion of the projectile would look like (at
least from one point of view). Both plots can be useful, but don't get
them mixed up! If you are looking at a time series plot and interpreting
it as a trajectory, you will be very confused.

Before you go on, you might want to read the notebook for this chapter,
`chap22.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).
