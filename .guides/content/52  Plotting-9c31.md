5.2  Plotting {#sec37 .section}
-------------

Now we can plot the estimates like this:

[]{#hevea_default185}

plot(census, ':', label='US Census') plot(un, '--', label='UN DESA')

The next two lines plot the `Series` objects. The [format
strings]{style="font-weight:bold"} [`':'`]{style="color:#B20000"} and
[`'--'`]{style="color:#B20000"} indicate dotted and dashed lines. For
more about format strings in Pyplot, see
[[https://modsimpy.com/plot]{style="font-family:monospace"}](https://modsimpy.com/plot).

[]{#hevea_default186} []{#hevea_default187}

The `label` argument provides the string that appears in the legend.

[]{#hevea_default188} []{#hevea_default189}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy003.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------
>   Figure 5.1: Estimates of world population, 1950--2016.
>   --------------------------------------------------------
> :::
>
> []{#chap03-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [5.1](#chap03-fig01) shows the result. The lines overlap almost
completely; for most dates the difference between the two estimates is
less than 1%.

