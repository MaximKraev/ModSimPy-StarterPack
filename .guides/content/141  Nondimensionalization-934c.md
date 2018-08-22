14.1  Nondimensionalization {#sec86 .section}
---------------------------

[]{#nondim}

Before we go on, let's wrap the code from the previous chapter in a
function:

def sweep\_parameters(beta\_array, gamma\_array): frame =
SweepFrame(columns=gamma\_array) for gamma in gamma\_array:
frame\[gamma\] = sweep\_beta(beta\_array, gamma) return frame

`sweep_parameters` takes as parameters two arrays: a range of values for
`beta` and a range of values for `gamma`.

It creates a `SweepFrame` to store the results, with one column for each
value of `gamma` and one row for each value of `beta`. A `SweepFrame` is
a kind of `DataFrame`, defined in the `modsim` library. Its purpose is
to store results from a two-dimensional parameter sweep.
[]{#hevea_default349} []{#hevea_default350}

Each time through the loop, we run `sweep_beta`. The result is a
`SweepSeries` object with one element for each value of `gamma`. The
assignment

frame\[gamma\] = sweep\_beta(beta\_array, gamma)

stores the values from the `SweepSeries` object as a new column in the
`SweepFrame`, corresponding to the current value of `gamma`.

At the end, the `SweepFrame` stores the fraction of students infected
for each pair of parameters, `beta` and `gamma`.

We can run `sweep_parameters` like this:

frame = sweep\_parameters(beta\_array, gamma\_array)

Then we can loop through the results like this:

for gamma in frame.columns: series = frame\[gamma\] for beta in
series.index: frac\_infected = series\[beta\] print(beta, gamma,
frac\_infected)

This is the first example we've seen with one `for` loop inside another:

-   Each time the outer loop runs, it selects a value of `gamma` from
    the columns of the `DataFrame` and extracts the corresponding column
    as a `Series`. []{#hevea_default351}
-   Each time the inner loop runs, it selects a value of `beta` from the
    `Series` and selects the corresponding element, which is the
    fraction of student infected.

In this example, `frame` has 4 columns, one for each value of `gamma`,
and 11 rows, one for each value of `beta`. So these loops print 44
lines, one for each pair of parameters.

Now let's think about possible relationships between `beta` and `gamma`:

-   When `beta` exceeds `gamma`, that means there are more contacts
    (that is, potential infections) than recoveries. The difference
    between `beta` and `gamma` might be called the "excess contact
    rate\", in units of contacts per day.
-   As an alternative, we might consider the ratio `beta/gamma`, which
    is the number of contacts per recovery. Because the numerator and
    denominator are in the same units, this ratio is
    [dimensionless]{style="font-weight:bold"}, which means it has no
    units. []{#hevea_default352}

Describing physical systems using dimensionless parameters is often a
useful move in the modeling and simulation game. It is so useful, in
fact, that it has a name:
[nondimensionalization]{style="font-weight:bold"} (see
[[https://modsimpy.com/nondim]{style="font-family:monospace"}](https://modsimpy.com/nondim)).

[]{#hevea_default353}

So we'll try the second option first. In the notebook for this chapter,
you can explore the first option as an exercise.

The following function wraps the previous loops and plots the fraction
infected as a function of the ratio `beta/gamma`:

def plot\_sweep\_frame(frame): for gamma in frame.columns: series =
frame\[gamma\] for beta in series.index: frac\_infected = series\[beta\]
plot(beta/gamma, frac\_infected, 'ro')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy021.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------
>   Figure 14.1: Total fraction infected as a function of contact number.
>   -----------------------------------------------------------------------
> :::
>
> []{#chap06-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [14.1](#chap06-fig03) shows that the results fall neatly on a
single curve, at least approximately. That means that we can predict the
fraction of students who will be infected based on a single parameter,
the ratio `beta/gamma`. We don't need to know the values of `beta` and
`gamma` separately.

