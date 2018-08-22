20.3  Events {#sec120 .section}
------------

[]{#events}

As an option, `run_ode_solver` can take an [event
function]{style="font-weight:bold"}, which detects an "event\", like the
penny hitting the sidewalk, and ends the simulation.

Event functions take the same parameters as slope functions, `state`,
`t`, and `system`. They should return a value that passes through `0`
when the event occurs. Here's an event function that detects the penny
hitting the sidewalk:

def event\_func(state, t, system): y, v = state return y

The return value is the height of the penny, `y`, which passes through
`0` when the penny hits the sidewalk.

We pass the event function to `run_ode_solver` like this:

results, details = run\_ode\_solver(system, slope\_func,
events=event\_func)

`events` can also be a sequence of event functions, if there is more
than one event that might occur.

`run_ode_solver` uses Brent's method to estimate the time of the event
precisely (see
[[https://modsimpy.com/brent]{style="font-family:monospace"}](https://modsimpy.com/brent)).

Before you go on, you might want to read the notebook for this chapter,
`chap20.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

