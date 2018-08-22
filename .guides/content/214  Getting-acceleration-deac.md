21.4  Getting acceleration {#sec125 .section}
--------------------------

In fact, there are many combinations of `L` or decrease `k` that would
work. We might want to find the combination that minimizes the peak
acceleration of the jumper, providing the maximum time near the sidewalk
to make the dunk.

To do that, we need to know the acceleration of the jumper over time.
Although we compute acceleration in the slope function, it is not
included in the results.

It might be tempting to record the acceleration each time the slope
function runs, but we should not do that. The ODE solver calls the slope
function many times with different values of `state` and `t`. Because of
the way the solver works, not all of the states and times are actually
part of the solution. So recording acceleration while the solver is
running would not work.

Instead, we can use the computed velocities to estimate acceleration as
a function of time.

The `modsim` library provides `gradient`, which uses NumPy to estimate
the derivative of a `TimeSeries`. Here's how it works:

a = gradient(results.v)

In the notebook for this chapter, `chap21.ipynb`, you can finish this
problem by finding the combination of `L` and `k` that allows the jumper
to complete the bungee dunk while minimizing the acceleration they
experience. For instructions on downloading and running the code, see
Section [0.4](#code).

