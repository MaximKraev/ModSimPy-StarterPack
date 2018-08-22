7.1  Quadratic growth {#sec46 .section}
---------------------

[]{#quadratic}

It makes sense that net growth should depend on the current population,
but maybe it's not a linear relationship, like this:

net\_growth = system.alpha \* pop

Maybe it's a quadratic relationship, like this:

[]{#hevea_default212}

net\_growth = system.alpha \* pop + system.beta \* pop\*\*2

We can test that conjecture with a new update function:

def update\_func\_quad(pop, t, system): net\_growth = system.alpha \*
pop + system.beta \* pop\*\*2 return pop + net\_growth

Now we need two parameters. I chose the following values by trial and
error; we will see better ways to do it later.

[]{#hevea_default213}

system.alpha = 0.025 system.beta = -0.0018

And here's how we run it:

results = run\_simulation(system, update\_func\_quad)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy006.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------------------------------------
>   Figure 7.1: Estimates of world population, 1950--2016, and a quadratic model.
>   -------------------------------------------------------------------------------
> :::
>
> []{#chap03-fig04}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [7.1](#chap03-fig04) shows the result. The model fits the data
well over the whole range, with just a bit of space between them in the
1960s.

Of course, we should expect the quadratic model to fit better than the
constant and proportional models because it has two parameters we can
choose, where the other models have only one. In general, the more
parameters you have to play with, the better you should expect the model
to fit.

[]{#hevea_default214} []{#hevea_default215} []{#hevea_default216}

But fitting the data is not the only reason to think the quadratic model
might be a good choice. It also makes sense; that is, there is a
legitimate reason to expect the relationship between growth and
population to have this form.

To understand it, let's look at net growth as a function of population.
Here's how we compute it:

pop\_array = linspace(0, 15, 100) net\_growth\_array = (system.alpha \*
pop\_array + system.beta \* pop\_array\*\*2)

`pop_array` contains 100 equally spaced values from 0 to 15.
`net_growth_array` contains the corresponding 100 values of net growth.
We can plot the results like this:

plot(pop\_array, net\_growth\_array)

Previously we have used `plot` with `Series` objects. In this example,
we use two NumPy arrays, corresponding to the x and y axes.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy007.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------
>   Figure 7.2: Net growth as a function of population.
>   -----------------------------------------------------
> :::
>
> []{#chap03-fig05}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [7.2](#chap03-fig05) shows the result. Note that the x-axis is
not time, as in the previous figures, but population. We can divide this
curve into four regimes of behavior: []{#hevea_default217}

-   When the population is less than 3-4 billion, net growth is
    proportional to population, as in the proportional model. In this
    regime, the population grows slowly because the population is small.
-   Between 4 billion and 10 billion, the population grows quickly
    because there are a lot of people.
-   Above 10 billion, population grows more slowly; this behavior models
    the effect of resource limitations that lower birth rates or
    increase death rates.
-   Above 14 billion, resources are so limited that the death rate
    exceeds the birth rate and net growth becomes negative.

Just below 14 billion, there is a point where net growth is 0, which
means that the population does not change. At this point, the birth and
death rates are equal, so the population is in
[equilibrium]{style="font-weight:bold"}.

[]{#hevea_default218}

