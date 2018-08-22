2.7  TimeSeries {#sec20 .section}
---------------

[]{#timeseries}

When we run a simulation, we usually want to save the results for later
analysis. The `modsim` library provides a `TimeSeries` object for this
purpose. A `TimeSeries` contains a sequence of time stamps and a
corresponding sequence of values. In this example, the time stamps are
integers representing minutes, and the values are the number of bikes at
one location.

[]{#hevea_default96} []{#hevea_default97}

We can create a new, empty `TimeSeries` like this:

results = TimeSeries()

And we can add a value to a `TimeSeries` like this:

results\[0\] = bikeshare.olin

The number in brackets is the time stamp, also called a
[label]{style="font-weight:bold"}. []{#hevea_default98}

We can use a `TimeSeries` inside a for loop to store the results of the
simulation:

for i in range(10): step(0.3, 0.2) results\[i\] = bikeshare.olin

Each time through the loop, we call `step`, which updates `bikeshare`.
Then we store the number of bikes at Olin in `results`. We use the loop
variable, `i`, as the time stamp.

[]{#hevea_default99} []{#hevea_default100} []{#hevea_default101}

When the loop exits, `results` contains 10 time stamps, from 0 through
9, and the number of bikes at Olin at the end of each time step.
[]{#hevea_default102}

`TimeSeries` is a specialized version of `Series`, which is defined by
Pandas, one of the libraries we'll be using extensively. The `Series`
object provides many functions; one example is `mean`, which we can call
like this:

results.mean()

You can read the documentation of `Series` at
[[https://modsimpy.com/series]{style="font-family:monospace"}](https://modsimpy.com/series).

[]{#hevea_default103} []{#hevea_default104} []{#hevea_default105}
[]{#hevea_default106}

