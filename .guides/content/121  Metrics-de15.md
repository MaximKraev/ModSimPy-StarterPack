12.1  Metrics {#sec77 .section}
-------------

[]{#metrics2}

When we plot a time series, we get a view of everything that happened
when the model ran, but often we want to boil it down to a few numbers
that summarize the outcome. These summary statistics are called
[metrics]{style="font-weight:bold"}, as we saw in
Section [3.6](#metrics).

[]{#hevea_default320}

In the SIR model, we might want to know the time until the peak of the
outbreak, the number of people who are sick at the peak, the number of
students who will still be sick at the end of the semester, or the total
number of students who get sick at any point.

As an example, I will focus on the last one --- the total number of sick
students --- and we will consider interventions intended to minimize it.

When a person gets infected, they move from `S` to `I`, so we can get
the total number of infections by computing the difference in `S` at the
beginning and the end:

def calc\_total\_infected(results, system): return
results.S\[system.t0\] - results.S\[system.t\_end\]

In the notebook that accompanies this chapter, you will have a chance to
write functions that compute other metrics. Two functions you might find
useful are `max` and `idxmax`.

[]{#hevea_default321} []{#hevea_default322}

If you have a `Series` called `S`, you can compute the largest value of
the series like this:

largest\_value = S.max()

And the label of the largest value like this:

time\_of\_largest\_value = S.idxmax()

If the `Series` is a `TimeSeries`, the label you get from `idxmax` is a
time or date. You can read more about these functions in the `Series`
documentation at
[[https://modsimpy.com/series]{style="font-family:monospace"}](https://modsimpy.com/series).

[]{#hevea_default323}

