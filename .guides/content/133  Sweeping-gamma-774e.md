13.3  Sweeping gamma {#sec84 .section}
--------------------

Now let's see what that looks like for a few different values of
`gamma`. Again, we'll use `linspace` to make an array of values:

[]{#hevea_default348}

gamma\_array = linspace(0.1, 0.7, 4)

And run `sweep_beta` for each value of `gamma`:

for gamma in gamma\_array: infected\_sweep = sweep\_beta(beta\_array,
gamma) label = 'gamma = ' + str(gamma) plot(infected\_sweep,
label=label)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy020.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------------------------------------------------------
>   Figure 13.2: Total number of infected students as a function of the parameter `beta`, for several values of `gamma`.
>   ----------------------------------------------------------------------------------------------------------------------
> :::
>
> []{#chap06-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [13.2](#chap06-fig02) shows the results. When `gamma` is low, the
recovery rate is low, which means people are infectious longer. In that
case, even a low contact rate (`beta`) results in an epidemic.

When `gamma` is high, `beta` has to be even higher to get things going.
That observation suggests that there might be a relationship between
`gamma` and `beta` that determines the outcome of the model. In fact,
there is. In the next two chapters I demonstrate it by running
simulations, then derive it by analysis.

Before you go on, you might want to read the notebook for this chapter,
`chap13.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

