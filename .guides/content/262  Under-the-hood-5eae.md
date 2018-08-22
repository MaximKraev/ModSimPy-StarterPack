26.2  Under the hood {#sec146 .section}
--------------------

The `crossings` function uses `InterpolatedUnivariateSpline` from SciPy,
which provides a `roots` function that finds zero-crossings. It uses a
cubic spline to interpolate between the time steps of the ODE solution.

[]{#hevea_default607}

The `Params` object is identical to the `System` object in all but name,
and based on a Pandas `Series`. I sometimes find it useful to use
`Params` objects to create `System` objects, but it is not necessary.

[]{#hevea_default608}

The `Vector` object is a `Quantity`, as defined by Pint, so it normally
has units. It contains a NumPy array that contains the coordinates. So
most vector arithmetic is really array arithmetic.

[]{#hevea_default609}

`max_bounded` uses the SciPy function `minimize_scalar`, which uses
Brent's method. You can read about it at
[[https://modsimpy.com/minimize]{style="font-family:monospace"}](https://modsimpy.com/minimize)).

[]{#hevea_default610} []{#hevea_default611} []{#hevea_default612}
[]{#hevea_default613}

