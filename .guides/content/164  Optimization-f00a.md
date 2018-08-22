16.4  Optimization {#sec99 .section}
------------------

Adding the milk after 30 minutes is better than adding immediately, but
maybe there's something in between that's even better. To find out, I'll
use the following function, which takes `t_add` as a parameter:

[]{#hevea_default403}

def run\_and\_mix(t\_add, t\_total=30): coffee =
make\_system(T\_init=90, t\_end=t\_add, r=r\_coffee, volume=300)
coffee\_results = run\_simulation(coffee, update\_func)

milk = make\_system(T\_init=5, t\_end=t\_add, r=r\_milk, volume=50)
milk\_results = run\_simulation(milk, update\_func)

mixture = mix(coffee, milk) mixture.t\_end = t\_total - t\_add results =
run\_simulation(mixture, update\_func)

return mixture.T\_final

When `t_add=0`, we add the milk immediately; when `t_add=30`, we add it
at the end. Now we can sweep the range of values in between:

sweep = SweepSeries() for t\_add in linspace(0, 30, 11): sweep\[t\_add\]
= run\_and\_mix(t\_add, 30)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy024.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------------
>   Figure 16.2: Final temperature as a function of the time the milk is added.
>   -----------------------------------------------------------------------------
> :::
>
> []{#chap07-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [16.2](#chap07-fig02) shows the result. Again, note that this is
a parameter sweep, not a time series. The x-axis is the time when we add
the milk, not the index of a `TimeSeries`.

The final temperature is maximized when `t_add=30`, so adding the milk
at the end is optimal.

In the notebook for this chapter you will have a chance to explore this
solution and try some variations. For example, suppose the coffee shop
won't let me take milk in a separate container, but I keep a bottle of
milk in the refrigerator at my office. In that case is it better to add
the milk at the coffee shop, or wait until I get to the office?

