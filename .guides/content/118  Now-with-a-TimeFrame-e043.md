11.8  Now with a TimeFrame {#sec75 .section}
--------------------------

[]{#timeframe}

If the number of state variables is small, storing them as separate
`TimeSeries` objects might not be so bad. But a better alternative is to
use a `TimeFrame`, which is another object defined in the `modsim`
library.

[]{#hevea_default311} []{#hevea_default312}

A `TimeFrame` is almost identical to a `DataFrame`, which we used in
Section [5.1](#worldpopdata), with just a few changes I made to adapt it
for our purposes.

Here's a more concise version of `run_simulation` using a `TimeFrame`:

def run\_simulation(system, update\_func): frame =
TimeFrame(columns=system.init.index) frame.row\[system.t0\] =
system.init

for t in linrange(system.t0, system.t\_end): frame.row\[t+1\] =
update\_func(frame.row\[t\], system)

return frame

The first line creates an empty `TimeFrame` with one column for each
state variable. Then, before the loop starts, we store the initial
conditions in the `TimeFrame` at `t0`. Based on the way we've been using
`TimeSeries` objects, it is tempting to write:

frame\[system.t0\] = system.init

But when you use the bracket operator with a `TimeFrame` or `DataFrame`,
it selects a column, not a row. For example, to select a column, we
could write:

[]{#hevea_default313} []{#hevea_default314}

frame\['S'\]

To select a row, we have to use `row`, like this:

[]{#hevea_default315}

frame.row\[system.t0\] = system.init

Since the value on the right side is a `State`, the assignment matches
up the index of the `State` with the columns of the `TimeFrame`; that
is, it assigns the `S` value from `system.init` to the `S` column of
`frame`, and likewise with `I` and `R`.

[]{#hevea_default316}

We can use the same feature to write the loop more concisely, assigning
the `State` we get from `update_func` directly to the next row of
`frame`.

[]{#hevea_default317}

Finally, we return `frame`. We can call this version of `run_simulation`
like this:

results = run\_simulation(system, update\_func)

And plot the results like this:

plot\_results(results.S, results.I, results.R)

As with a `DataFrame`, we can use the dot operator to select columns
from a `TimeFrame`.

[]{#hevea_default318} []{#hevea_default319}

Before you go on, you might want to read the notebook for this chapter,
`chap11.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).
