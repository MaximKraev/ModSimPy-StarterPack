13.2  Sweeping beta {#sec83 .section}
-------------------

Recall that β is the contact rate, which captures both the frequency of
interaction between people and the fraction of those interactions that
result in a new infection. If [N]{style="font-style:italic"} is the size
of the population and [s]{style="font-style:italic"} is the fraction
that's susceptible, [s N]{style="font-style:italic"} is the number of
susceptibles, β [s N]{style="font-style:italic"} is the number of
contacts per day between susceptibles and other people, and β [s i
N]{style="font-style:italic"} is the number of those contacts where the
other person is infectious. []{#hevea_default343}

As β increases, we expect the total number of infections to increase. To
quantify that relationship, I'll create a range of values for β:

beta\_array = linspace(0.1, 1.1, 11)

Then run the simulation for each value and print the results.

for beta in beta\_array: sir = make\_system(beta, gamma)
run\_simulation(sir, update1) print(sir.beta,
calc\_total\_infected(sir))

We can wrap that code in a function and store the results in a
`SweepSeries` object: []{#hevea_default344}

def sweep\_beta(beta\_array, gamma): sweep = SweepSeries() for beta in
beta\_array: system = make\_system(beta, gamma) run\_simulation(system,
update1) sweep\[system.beta\] = calc\_total\_infected(system) return
sweep

Now we can run `sweep_beta` like this:

infected\_sweep = sweep\_beta(beta\_array, gamma)

And plot the results:

label = 'gamma = ' + str(gamma) plot(infected\_sweep, label=label)

The first line uses string operations to assemble a label for the
plotted line: []{#hevea_default345}

-   When the `+` operator is applied to strings, it joins them
    end-to-end, which is called
    [concatenation]{style="font-weight:bold"}.

    []{#hevea_default346}

-   The function `str` converts any type of object to a String
    representation. In this case, `gamma` is a number, so we have to
    convert it to a string before trying to concatenate it.

    []{#hevea_default347}

If the value of `gamma` is `0.25`, the value of `label` is the string
[`'gamma = 0.25'`]{style="color:#B20000"}.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy019.png)
> :::
>
> ::: {.caption}
>   ------------------------------------------------------------------------------------------------------------
>   Figure 13.1: Total number of infected students as a function of the parameter `beta`, with `gamma = 0.25`.
>   ------------------------------------------------------------------------------------------------------------
> :::
>
> []{#chap06-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [13.1](#chap06-fig01) shows the results. Remember that this
figure is a parameter sweep, not a time series, so the x-axis is the
parameter `beta`, not time.

When `beta` is small, the contact rate is low and the outbreak never
really takes off; the total number of infected students is near zero. As
`beta` increases, it reaches a threshold near 0.3 where the fraction of
infected students increases quickly. When `beta` exceeds 0.5, more than
80% of the population gets sick.

