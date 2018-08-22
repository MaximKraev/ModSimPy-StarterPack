10.2  Under the hood {#sec63 .section}
--------------------

[]{#dataframe}

So far we've been using `DataFrame` and `Series` objects without really
understanding how they work. In this section we'll review what we know
so far and get into a little more detail.

Each `DataFrame` contains three objects: `index` is a sequence of labels
for the rows, `columns` is a sequence of labels for the columns, and
`values` is a NumPy array that contains the data.

In the `DataFrame` objects in this chapter, `index` contains years from
1950 to 2016, `columns` contains names of agencies and people that
produce population estimates, and `values` is an array of estimates.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy010.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------
>   Figure 10.1: The elements that make up a `DataFrame` and a `Series`.
>   ----------------------------------------------------------------------
> :::
>
> []{#fig-dataframe}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

A `Series` is like a `DataFrame` with one column: it contains a string
`name` that is like a column label, an index, and an array of values.

Figure [10.1](#fig-dataframe) shows the elements of a `DataFrame` and
`Series` graphically.

[]{#hevea_default275}

To determine the types of these elements, we can use the Python function
`type`:

  --------------------------------------------------------------------------
  type(table2) type(table2.index) type(table2.columns) type(table2.values)
  --------------------------------------------------------------------------

The type of `table2` is `DataFrame`. The type of `table2.index` is
`Int64Index`, which is similar to a `Series`.

The type of `table2.columns` is `Index`, which might seem strange,
because "the\" index is the sequence of row labels. But the sequence of
column labels is also a kind of index.

The type of `table2.values` is `ndarray`, which is the primary array
type provided by NumPy; the name indicates that the array is
"n-dimensional\"; that is, it can have an arbitrary number of
dimensions.

In `census` or `un`, the index is an `Int64Index` object and the values
are stored in an `ndarray`.

In the `modsim` library, the functions `get_first_label` and
`get_last_label` provide a simple way to access the index of a
`DataFrame` or `Series`:

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  def get\_first\_label(series): [return]{style="color:blue"} series.index\[0\] def get\_last\_label(series): [return]{style="color:blue"} series.index\[-1\]
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

In brackets, the number `0` selects the first label; the number `-1`
selects the last label.

Several of the objects defined in `modsim` are modified versions of
`Series` objects. `State` and `System` objects are `Series` where the
labels are variables names. A `TimeSeries` is a `Series` where the
labels are times, and a `SweepSeries` is a `Series` where the labels are
parameter values.

Defining these objects wasn't necessary; we could do all the same things
using `Series` objects. But giving them different names makes the code
easier to read and understand, and helps avoid certain kinds of errors
(like getting two `Series` objects mixed up).

If you write simulations in Python in the future, you can continue using
the objects in `modsim`, if you find them useful, or you can use Pandas
objects directly.

