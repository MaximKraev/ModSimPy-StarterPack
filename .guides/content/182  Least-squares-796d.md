18.2  Least squares {#sec109 .section}
-------------------

So far we have been taking the parameters as given, but in general we
don't have that luxury. Normally we are given the data and we have to
search for the parameters that yield a time series that best matches the
data.

[]{#hevea_default450}

We will do that now, in two steps:

1.  First we'll define an [error function]{style="font-weight:bold"}
    that takes a set of parameters, simulates the system with the given
    parameters, and computes the errors, that is, the differences
    between the simulation results and the data.

    []{#hevea_default451} []{#hevea_default452}

2.  Then we'll use `fit_leastsq`, to search for the parameters that
    minimize mean squared error (MSE).

    []{#hevea_default453} []{#hevea_default454} []{#hevea_default455}
    []{#hevea_default456}

When `fit_leastsq` runs, it calls `error_func` many times, each time
with a different set of parameters, until it converges on the parameters
that minimize MSE.

[]{#hevea_default457}

Here's the error function:

def error\_func(params, data): system = make\_system(params, data)
results, details = run\_ode\_solver(system, slope\_func) errors =
results.G - data.glucose return errors

`error_func` takes as parameters a `Params` object and a `DataFrame`
containing the measurements. It uses `make_system` to create a `System`
object, and calls `run_ode_solver` using the same slope function we saw
in Section [18.1](#slopefunc).

Then it computes the difference between the simulation results and the
data. Since `results.G` and `data.glucose` are both `Series` objects,
`errors` is also a `Series`.

[]{#hevea_default458} []{#hevea_default459}

Now, to do the actual minimization, we run `fit_leastsq`:

best\_params, details = fit\_leastsq(error\_func, params, data)

The first return value is a `Params` object with the parameters that
yield the best fit for the data. The second return value is a
`ModSimSeries` object with more information.

