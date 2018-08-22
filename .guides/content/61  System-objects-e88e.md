6.1  System objects {#sec41 .section}
-------------------

[]{#nowwithsystem}

Like a `State` object, a `System` object contains variables and their
values. The difference is:

-   `State` objects contain state variables, which represent the state
    of the system, which get updated in the course of a simulation.
-   `System` objects contain [system
    variables]{style="font-weight:bold"}, which represent parameters of
    the system, which usually don't get updated over the course of a
    simulation.

For example, in the bike share model, state variables include the number
of bikes at each location, which get updated whenever a customer moves a
bike. System variables include the number of locations, total number of
bikes, and arrival rates at each location.

In the population model, the only state variable is the population.
System variables include the annual growth rate, the initial time and
population, and the end time.

Suppose we have the following variables, as computed in the previous
chapter (assuming that `census` is a `Series` object):

t\_0 = get\_first\_label(census) t\_end = get\_last\_label(census)
elapsed\_time = t\_end - t\_0

p\_0 = get\_first\_value(census) p\_end = get\_last\_value(census)
total\_growth = p\_end - p\_0

annual\_growth = total\_growth / elapsed\_time

Some of these are parameters we need to simulate the system; others are
temporary values we can discard. We can put the parameters we need into
a `System` object like this:

[]{#hevea_default202}

system = System(t\_0=t\_0, t\_end=t\_end, p\_0=p\_0,
annual\_growth=annual\_growth)

`t0` and `t_end` are the first and last years; `p_0` is the initial
population, and `annual_growth` is the estimated annual growth.

Next we'll wrap the code from the previous chapter in a function:

def run\_simulation1(system): results = TimeSeries()
results\[system.t\_0\] = system.p\_0

for t in linrange(system.t\_0, system.t\_end): results\[t+1\] =
results\[t\] + system.annual\_growth

return results

When `run_simulation1` runs, it stores the results in a `TimeSeries` and
returns it.

[]{#hevea_default203}

The following function plots the results along with the estimates
`census` and `un`:

def plot\_results(census, un, timeseries, title): plot(census, ':',
label='US Census') plot(un, '--', label='UN DESA') plot(timeseries,
color='gray', label='model')

decorate(xlabel='Year', ylabel='World population (billion)',
title=title)

[]{#hevea_default204} []{#hevea_default205}

The `color` argument specifies the color of the line. For details on
color specification in Pyplot, see
[[https://modsimpy.com/color]{style="font-family:monospace"}](https://modsimpy.com/color).

[]{#hevea_default206} []{#hevea_default207}

Finally, we can run the simulation like this.

results = run\_simulation1(system) plot\_results(census, un, results,
'Constant growth model')

The results are the same as Figure [5.2](#chap03-fig02).

It might not be obvious that using functions and `System` objects is a
big improvement, and for a simple model that we run only once, maybe
it's not. But as we work with more complex models, and when we run many
simulations with different parameters, we'll see that the organization
of the code makes a big difference.

Now let's see if we can improve the model.

