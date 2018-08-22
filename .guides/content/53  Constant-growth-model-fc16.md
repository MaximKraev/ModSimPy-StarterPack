5.3  Constant growth model {#sec38 .section}
--------------------------

Suppose we want to predict world population growth over the next 50 or
100 years. We can do that by developing a model that describes how
populations grow, fitting the model to the data we have so far, and then
using the model to generate predictions.

[]{#hevea_default190}

In the next few sections I demonstrate this process starting with simple
models and gradually improving them.

[]{#hevea_default191}

Although there is some curvature in the plotted estimates, it looks like
world population growth has been close to linear since 1960 or so. So
we'll start with a model that has constant growth.

To fit the model to the data, we'll compute the average annual growth
from 1950 to 2016. Since the UN and Census data are so close, we'll use
the Census data.

We can select a value from a `Series` using the bracket operator:
[]{#hevea_default192} []{#hevea_default193}

census\[1950\]

So we can get the total growth during the interval like this:

total\_growth = census\[2016\] - census\[1950\]

The numbers in brackets are called [labels]{style="font-weight:bold"},
because they label the rows of the `Series` (not to be confused with the
labels we saw in the previous section, which label lines in a graph).

[]{#hevea_default194}

In this example, the labels 2016 and 1950 are part of the data, so it
would be better not to make them part of the program. Putting values
like these in the program is called [hard
coding]{style="font-weight:bold"}; it is considered bad practice because
if the data change in the future, we have to modify the program (see
[[https://modsimpy.com/hardcode]{style="font-family:monospace"}](https://modsimpy.com/hardcode)).

[]{#hevea_default195}

It would be better to get the first and last labels from the `Series`
like this:

t\_0 = get\_first\_label(census) t\_end = get\_last\_label(census)
elapsed\_time = t\_end - t\_0

`get_first_label` and `get_last_label` are defined in `modsim.py`; as
you might have guessed, they select the first and last labels from
`census`. The difference between them is the elapsed time.

The `modsim` library also defines `get_first_value` and
`get_last_value`, which we can use to compute `total_growth`:

p\_0 = get\_first\_value(census) p\_end = get\_last\_value(census)
total\_growth = p\_end - p\_0

Finally, we can compute average annual growth.

annual\_growth = total\_growth / elapsed\_time

The next step is to use this estimate to simulate population growth
since 1950.

