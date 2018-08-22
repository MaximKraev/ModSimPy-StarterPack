15.5  Implementation {#sec94 .section}
--------------------

[]{#coffee_impl}

To get started, let's forget about the milk temporarily and focus on the
coffee. I'll create a `State` object to represent the initial
temperature:

init = State(T=90)

And a `System` object to contain the parameters of the system:

[]{#hevea_default379} []{#hevea_default380}

coffee = System(init=init, volume=300, r=0.01, T\_env=22, t\_0=0,
t\_end=30, dt=1)

The values of `volume`, `T_env`, and `t_end` come from the statement of
the problem. I chose the value of `r` arbitrarily for now; we will
figure out how to estimate it soon.

[]{#hevea_default381}

`dt` is the time step we use to simulate the cooling process. Strictly
speaking, Newton's law is a differential equation, but over a short
period of time we can approximate it with a difference equation:

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Δ [T]{style="font-style:italic"} = −[r]{style="font-style:italic"} ([T]{style="font-style:italic"} − [T]{style="font-style:italic"}~[env]{style="font-style:italic"}~) [dt]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

where [dt]{style="font-style:italic"} is a small time step and Δ
[T]{style="font-style:italic"} is the change in temperature during that
time step.

Note: I use Δ [T]{style="font-style:italic"} to denote a change in
temperature over time, but in the context of heat transfer, you might
also see Δ [T]{style="font-style:italic"} used to denote the difference
in temperature between an object and its environment,
[T]{style="font-style:italic"} −
[T]{style="font-style:italic"}~[env]{style="font-style:italic"}~. To
minimize confusion, I avoid this second use.

Now we can write an update function:

[]{#hevea_default382}

def update\_func(state, t, system): unpack(system)

T = state.T T += -r \* (T - T\_env) \* dt

return State(T=T)

Like previous update functions, this one takes a `State` object, a time,
and a `System` object.

Now if we run

update\_func(init, 0, coffee)

we see that the temperature after one minute is 89.3, so the temperature
drops by about 0.7, at least for this value of `r`.

Here's a version of `run_simulation` that simulates a series of time
steps from `t_0` to `t_end`:

[]{#hevea_default383} []{#hevea_default384} []{#hevea_default385}

def run\_simulation(system, update\_func): unpack(system)

frame = TimeFrame(columns=init.index) frame.row\[t\_0\] = init ts =
linrange(t\_0, t\_end, dt)

for t in ts: frame.row\[t+dt\] = update\_func(frame.row\[t\], t, system)

\# store the final temperature in T\_final system.T\_final =
get\_last\_value(frame.T)

return frame

This function is similar to previous versions of `run_simulation`.

One difference is that it uses `linrange` to make an array of values
from `t_0` to `t_end` with time step `dt`. The result does not include
`t_end`, so the last value in the array is `t_end-dt`.

[]{#hevea_default386} []{#hevea_default387} []{#hevea_default388}

Also, it stores the final temperature as a system variable, `T_final`.

We can run it like this:

results = run\_simulation(coffee, update\_func)

The result is a `TimeFrame` object with one row per time step and just
one column, `T`. The temperature after 30 minutes is 72.3, which is a
little higher than stated in the problem, 70. We can adjust `r` and find
the right value by trial and error, but we'll see a better way in the
next chapter.

[]{#hevea_default389} []{#hevea_default390}

First I want to wrap what we have so far in a function:

def make\_system(T\_init=90, r=0.01, volume=300, t\_end=30): init =
State(T=T\_init)

return System(init=init, T\_final=T\_init, volume=volume, r=r,
T\_env=22, t\_0=0, t\_end=t\_end, dt=1)

`make_system` takes the system parameters and packs them into a `System`
object. Now we can simulate the system like this:

[]{#hevea_default391}

coffee = make\_system(T\_init=90, r=0.01, volume=300, t\_end=30) results
= run\_simulation(coffee, update\_func)

Before you go on, you might want to read the notebook for this chapter,
`chap15.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).
