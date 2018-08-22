11.5  The update function {#sec72 .section}
-------------------------

At any point in time, the state of the system is represented by a
`State` object with three variables, `S`, `I` and `R`. So I'll define an
update function that takes as parameters a `State` object, the current
time, and a `System` object:

[]{#hevea_default297} []{#hevea_default298} []{#hevea_default299}

def update\_func(state, t, system): s, i, r = state

infected = system.beta \* i \* s recovered = system.gamma \* i

s -= infected i += infected - recovered r += recovered

return State(S=s, I=i, R=r)

The first line uses a feature we have not seen before, [multiple
assignment]{style="font-weight:bold"}. The value on the right side is a
`State` object that contains three values. The left side is a sequence
of three variable names. The assignment does just what we want: it
assigns the three values from the `State` object to the three variables,
in order.

The local variables, `s`, `i` and `r`, are lowercase to distinguish them
from the state variables, `S`, `I` and `R`.

[]{#hevea_default300} []{#hevea_default301} []{#hevea_default302}

The update function computes `infected` and `recovered` as a fraction of
the population, then updates `s`, `i` and `r`. The return value is a
`State` that contains the updated values.

[]{#hevea_default303}

When we call `update_func` like this:

state = update\_func(init, 0, system)

The result is a `State` object with these values:

 

[value]{style="font-family:sans-serif;font-weight:bold"}

[S]{style="font-family:sans-serif;font-weight:bold"}

0.985388

[I]{style="font-family:sans-serif;font-weight:bold"}

0.011865

[R]{style="font-family:sans-serif;font-weight:bold"}

0.002747

You might notice that this version of `update_func` does not use one of
its parameters, `t`. I include it anyway because update functions
sometimes depend on time, and it is convenient if they all take the same
parameters, whether they need them or not.

