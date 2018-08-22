2.8  Plotting {#sec21 .section}
-------------

[]{#plotting}

The `modsim` library provides a function called `plot` we can use to
plot `results`:

plot(results)

`plot` can take an additional argument that gives the line a label; this
label will appear in the legend of the plot, if we create one.

plot(results, label='Olin')

`label` is an example of a [keyword argument]{style="font-weight:bold"},
so called because we provide a "keyword", which is `label` in this case,
along with its value. Arguments without keywords are called [positional
arguments]{style="font-weight:bold"} because they are assigned to
parameters according to their position. It is good to know these terms
because they appear in Python error messages.

[]{#hevea_default107} []{#hevea_default108} []{#hevea_default109}

Whenever you make a figure, you should label the axes. The `modsim`
library provides `decorate`, which labels the axes and gives the figure
a title and legend:

decorate(title='Olin-Wellesley Bikeshare', xlabel='Time step (min)',
ylabel='Number of bikes')

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy002.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------------------------
>   Figure 2.1: Simulation of a bikeshare system showing number of bikes at Olin over time.
>   -----------------------------------------------------------------------------------------
> :::
>
> []{#chap01-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [2.1](#chap01-fig01) shows the result.

`plot` and `decorate` are based on Pyplot, which is a Python library for
generating figures. You can read more about `plot` and the arguments it
takes at
[[https://modsimpy.com/plot]{style="font-family:monospace"}](https://modsimpy.com/plot).

[]{#hevea_default110} []{#hevea_default111} []{#hevea_default112}

Before you go on, you might want to read the notebook for this chapter,
`chap02.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

