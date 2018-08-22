25.4  Estimating friction {#sec143 .section}
-------------------------

Let's take the code from the previous section and wrap it in a function.

[]{#hevea_default600}

def run\_two\_phases(force, torque\_friction, params): params =
Params(params, force=force, torque\_friction=torque\_friction)

\# run phase 1 system1 = make\_system(params) results1, \_ =
run\_ode\_solver(system1, slope\_func, events=event\_func1,
max\_step=0.1\*s)

\# get the final state from phase 1 t\_0 = get\_last\_label(results1) \*
s theta, omega = get\_last\_value(results1) init2 = State(theta=theta,
omega=omega)

\# run phase 2 system2 = System(system1, t\_0=t\_0, init=init2, force=0)
results2, \_ = run\_ode\_solver(system2, slope\_func,
events=event\_func2, max\_step=0.1\*s)

\# combine and return the results results =
results1.combine\_first(results2) return results

Now we can use `run_two_phases` to write an error function we can use,
with `fsolve`, to find the torque due to friction that yields the
observed results from the first push, a total rotation of 1.5.

[]{#hevea_default601} []{#hevea_default602}

def error\_func1(torque\_friction, params): force = 1 results =
run\_two\_phases(force, torque\_friction, params) theta\_final =
get\_last\_value(results.theta) print(torque\_friction, theta\_final)
return theta\_final - 1.5

But before we call `fsolve`, we have to deal with a problem. In order to
support computation with units, the `modsim` library uses a certain
amount of black magic. With most units, the magic works pretty well, but
some units are problematic, including Newtons.

[]{#hevea_default603}

However, now that we have a working simulation, and some confidence that
it is correct, it is less important to carry units through the
computation.

We can drop them by creating a new `Params` object with the same values
and no units. The `modsim` library provides `remove_unit`, which does
just that.

params\_nodim = remove\_units(params)

The rest of the code works without modification, in part because I
designed it to keep almost all of the units in one place.

Now we can use `fsolve` to estimate torque due to friction.

[]{#hevea_default604} []{#hevea_default605} []{#hevea_default606}

guess = 0.2 res = fsolve(error\_func1, guess, params\_nodim)

The result is 0.166, a little less than the initial guess.

Now that we know the torque due to friction, we can compute the force
needed to rotate the turntable through the remaining angle, that is,
from 1.5 to 3.14.

In the notebook for this chapter, `chap25.ipynb`, you will have a chance
to finish off the exercise. For instructions on downloading and running
the code, see Section [0.4](#code).
