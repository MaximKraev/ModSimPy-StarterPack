6.3  Factoring out the update function {#sec43 .section}
--------------------------------------

`run_simulation1` and `run_simulation2` are nearly identical except for
the body of the `for` loop, where we compute the population for the next
year.

[]{#hevea_default209} []{#hevea_default210}

Rather than repeat identical code, we can separate the things that
change from the things that don't. First, I'll pull out the update code
from `run_simulation2` and make it a function:

def update\_func1(pop, t, system): births = system.birth\_rate \* pop
deaths = system.death\_rate \* pop return pop + births - deaths

This function takes as arguments the current population, current year,
and a `System` object; it returns the computed population for the next
year.

This update function does not use `t`, so we could leave it out. But we
will see other functions that need it, and it is convenient if they all
take the same parameters, used or not.

Now we can write a function that runs any model:

def run\_simulation(system, update\_func): results = TimeSeries()
results\[system.t\_0\] = system.p\_0

for t in linrange(system.t\_0, system.t\_end): results\[t+1\] =
update\_func(results\[t\], t, system)

return results

This function demonstrates a feature we have not seen before: it takes a
function as a parameter! When we call `run_simulation`, the second
parameter is a function, like `update_func1`, that computes the
population for the next year.

[]{#hevea_default211}

Here's how we call it:

results = run\_simulation(system, update\_func1)

Passing a function as an argument is the same as passing any other
value. The argument, which is `update_func1` in this example, gets
assigned to the parameter, which is called `update_func`. Inside
`run_simulation`, we can run `update_func` just like any other function.

The loop in `run_simulation` calls `update_func1` once for each year
between `t_0` and `t_end-1`. The result is the same as
Figure [6.1](#chap03-fig03).

