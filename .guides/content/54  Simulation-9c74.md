5.4  Simulation {#sec39 .section}
---------------

Our simulation will start with the observed population in 1950, `p0`,
and add `annual_growth` each year. To store the results, we'll use a
`TimeSeries` object:

[]{#hevea_default196}

results = TimeSeries()

We can set the first value in the new `TimeSeries` by copying the first
value from `census`:

results\[t\_0\] = census\[p\_0\]

Then we set the rest of the values by simulating annual growth:

for t in linrange(t\_0, t\_end): results\[t+1\] = results\[t\] +
annual\_growth

`linrange` is defined in the `modsim` library. In this example it
returns a NumPy array of integers from `t_0` to `t_end`, including the
first but not the last.

[]{#hevea_default197} []{#hevea_default198} []{#hevea_default199}

Each time through the loop, the loop variable `t` gets the next value
from the array. Inside the loop, we compute the population for each year
by adding the population for the previous year and `annual_growth`. The
last time through the loop, the value of `t` is 2015, so the last label
in `results` is 2016, which is what we want.

[]{#hevea_default200} []{#hevea_default201}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy004.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------------------------------------------
>   Figure 5.2: Estimates of world population, 1950--2016, and a constant growth model.
>   -------------------------------------------------------------------------------------
> :::
>
> []{#chap03-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [5.2](#chap03-fig02) shows the result. The model does not fit the
data particularly well from 1950 to 1990, but after that, it's pretty
good. Nevertheless, there are problems:

-   There is no obvious mechanism that could cause population growth to
    be constant from year to year. Changes in population are determined
    by the fraction of people who die and the fraction of people who
    give birth, so we expect them to depend on the current population.
-   According to this model, we would expect the population to keep
    growing at the same rate forever, and that does not seem reasonable.

We'll try out some different models in the next few sections, but first
let's clean up the code.

Before you go on, you might want to read the notebook for this chapter,
`chap05.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

