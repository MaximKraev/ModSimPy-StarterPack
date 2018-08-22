17.4  Interpolation {#sec105 .section}
-------------------

[]{#interpolate}

Before we are ready to implement the model, there's one problem we have
to solve. In the differential equations, [I]{style="font-style:italic"}
is a function that can be evaluated at any time,
[t]{style="font-style:italic"}. But in the `DataFrame`, we only have
measurements at discrete times. This is a job for interpolation!

[]{#hevea_default423}

The `modsim` library provides a function named `interpolate`, which is a
wrapper for the SciPy function `interp1d`. It takes any kind of `Series`
as a parameter, including `TimeSeries` and `SweepSeries`, and returns a
function. That's right, I said it returns a *function*.

[]{#hevea_default424} []{#hevea_default425} []{#hevea_default426}
[]{#hevea_default427} []{#hevea_default428}

So we can call `interpolate` like this:

I = interpolate(data.insulin)

Then we can call the new function, `I`, like this:

I(18)

The result is 31.66, which is a linear interpolation between the actual
measurements at `t=16` and `t=19`. We can also pass an array as an
argument to `I`:

ts = linrange(t\_0, t\_end, endpoint=True) I(ts)

The result is an array of interpolated values for equally-spaced values
of `t`.

[]{#hevea_default429} []{#hevea_default430}

`interpolate` can take additional arguments, which it passes along to
`interp1d`. You can read about these options at
[[https://modsimpy.com/interp]{style="font-family:monospace"}](https://modsimpy.com/interp).

