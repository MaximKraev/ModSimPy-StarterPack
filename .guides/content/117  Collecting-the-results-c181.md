11.7  Collecting the results {#sec74 .section}
----------------------------

The previous version of `run_simulation` only returns the final state,
but we might want to see how the state changes over time. We'll consider
two ways to do that: first, using three `TimeSeries` objects, then using
a new object called a `TimeFrame`.

[]{#hevea_default306} []{#hevea_default307}

Here's the first version:

def run\_simulation(system, update\_func): S = TimeSeries() I =
TimeSeries() R = TimeSeries()

state = system.init t0 = system.t0 S\[t0\], I\[t0\], R\[t0\] = state

for t in linrange(system.t0, system.t\_end): state = update\_func(state,
t, system) S\[t+1\], I\[t+1\], R\[t+1\] = state

return S, I, R

First, we create `TimeSeries` objects to store the results. Notice that
the variables `S`, `I`, and `R` are `TimeSeries` objects now.

Next we initialize `state`, `t0`, and the first elements of `S`, `I` and
`R`.

Inside the loop, we use `update_func` to compute the state of the system
at the next time step, then use multiple assignment to unpack the
elements of `state`, assigning each to the corresponding `TimeSeries`.

[]{#hevea_default308}

At the end of the function, we return the values `S`, `I`, and `R`. This
is the first example we have seen where a function returns more than one
value.

Now we can run the function like this:

system = make\_system(beta, gamma) S, I, R = run\_simulation(system,
update\_func)

We'll use the following function to plot the results:

def plot\_results(S, I, R): plot(S, '--', label='Susceptible') plot(I,
'-', label='Infected') plot(R, ':', label='Resistant')
decorate(xlabel='Time (days)', ylabel='Fraction of population')

[]{#hevea_default309} []{#hevea_default310}

And run it like this:

plot\_results(S, I, R)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy014.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------------
>   Figure 11.2: Time series for `S`, `I`, and `R` over the course of 98 days.
>   ----------------------------------------------------------------------------
> :::
>
> []{#chap05-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [11.2](#chap05-fig01) shows the result. Notice that it takes
about three weeks (21 days) for the outbreak to get going, and about six
weeks (42 days) before it peaks. The fraction of the population that's
infected is never very high, but it adds up. In total, almost half the
population gets sick.

