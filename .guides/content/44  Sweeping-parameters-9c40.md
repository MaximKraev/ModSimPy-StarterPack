4.4  Sweeping parameters {#sec33 .section}
------------------------

If we know the actual values of parameters like `p1` and `p2`, we can
use them to make specific predictions, like how many bikes will be at
Olin after one hour.

[]{#hevea_default153} []{#hevea_default154}

But prediction is not the only goal; models like this are also used to
explain why systems behave as they do and to evaluate alternative
designs. For example, if we observe the system and notice that we often
run out of bikes at a particular time, we could use the model to figure
out why that happens. And if we are considering adding more bikes, or
another station, we could evaluate the effect of various "what if\"
scenarios. []{#hevea_default155}

As an example, suppose we have enough data to estimate that `p2` is
about `0.2`, but we don't have any information about `p1`. We could run
simulations with a range of values for `p1` and see how the results
vary. This process is called [sweeping]{style="font-weight:bold"} a
parameter, in the sense that the value of the parameter "sweeps\"
through a range of possible values.

[]{#hevea_default156} []{#hevea_default157}

Now that we know about loops and arrays, we can use them like this:

p1\_array = linspace(0, 1, 11) p2 = 0.2 num\_steps = 60

for p1 in p1\_array: state = run\_simulation(p1, p2, num\_steps)
print(p1, state.olin\_empty)

Each time through the loop, we run a simulation with a different value
of `p1` and the same value of `p2`, `0.2`. Then we print `p1` and the
number of unhappy customers at Olin.

To save and plot the results, we can use a `SweepSeries` object, which
is similar to a `TimeSeries`; the difference is that the labels in a
`SweepSeries` are parameter values rather than time values.

We can create an empty `SweepSeries` like this:

  -----------------------
  sweep = SweepSeries()
  -----------------------

And add values like this:

for p1 in p1\_array: state = run\_simulation(p1, p2, num\_steps)
sweep\[p1\] = state.olin\_empty

The result is a `SweepSeries` that maps from each value of `p1` to the
resulting number of unhappy customers. Then we can plot the results:

  ------------------------------------------------------
  plot(sweep, label=[\'Olin\']{style="color:#B20000"})
  ------------------------------------------------------

