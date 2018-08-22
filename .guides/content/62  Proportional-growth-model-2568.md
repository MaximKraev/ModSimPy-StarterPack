6.2  Proportional growth model {#sec42 .section}
------------------------------

The biggest problem with the constant growth model is that it doesn't
make any sense. It is hard to imagine how people all over the world
could conspire to keep population growth constant from year to year.

[]{#hevea_default208}

On the other hand, if some fraction of the population dies each year,
and some fraction gives birth, we can compute the net change in the
population like this:

def run\_simulation2(system): results = TimeSeries()
results\[system.t\_0\] = system.p\_0

for t in linrange(system.t\_0, system.t\_end): births =
system.birth\_rate \* results\[t\] deaths = system.death\_rate \*
results\[t\] results\[t+1\] = results\[t\] + births - deaths

return results

Now we can choose the values of `birth_rate` and `death_rate` that best
fit the data. Without trying too hard, I chose:

system.death\_rate = 0.01 system.birth\_rate = 0.027

Then I ran the simulation and and plotted the results:

results = run\_simulation2(system) plot\_results(census, un, results,
'Proportional model')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy005.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------------------
>   Figure 6.1: Estimates of world population, 1950--2016, and a proportional model.
>   ----------------------------------------------------------------------------------
> :::
>
> []{#chap03-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [6.1](#chap03-fig03) shows the results. The proportional model
fits the data well from 1950 to 1965, but not so well after that.
Overall, the [quality of fit]{style="font-weight:bold"} is not as good
as the constant growth model, which is surprising, because it seems like
the proportional model is more realistic.

In the next chapter we'll try one more time to find a model that makes
sense and fits the data. But first, I want to make a few more
improvements to the code.

