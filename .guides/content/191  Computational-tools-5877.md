19.1  Computational tools {#sec112 .section}
-------------------------

In Chapter [11](#chap11) we saw an update function that uses multiple
assignment to unpack a `State` object and assign the state variables to
local variables.

def update\_func(state, t, system): s, i, r = state

infected = system.beta \* i \* s recovered = system.gamma \* i

s -= infected i += infected - recovered r += recovered

return State(S=s, I=i, R=r)

And in `run_simulation` we used multiple assignment again to assign
state variables to a row in a `TimeFrame`:

def run\_simulation(system, update\_func): frame =
TimeFrame(columns=system.init.index) frame.row\[system.t0\] =
system.init

for t in linrange(system.t0, system.t\_end): frame.row\[t+1\] =
update\_func(frame.row\[t\], system)

return frame

In Chapter [12](#chap12) we used the functions `max` and `idxmax` to
compute metrics:

largest\_value = S.max() time\_of\_largest\_value = S.idxmax()

And we saw the logistic function, a general function which is useful for
modeling relationships between variables, like the effectiveness of an
intervention as a function of expenditure.

In Chapter [13](#chap13) we saw the `unpack` function, which makes
system variables available as if they were local variables.

def run\_simulation(system, update\_func): unpack(system)

frame = TimeFrame(columns=init.index) frame.row\[t0\] = init

for t in linrange(t0, t\_end): frame.row\[t+1\] =
update\_func(frame.row\[t\], t, system)

system.results = frame

One thing to remember when you use `unpack`: if you modify any of the
unpacked variables, the change does not affect the `System` object.

In Chapter [14](#chap14) we used a `SweepFrame` object to sweep two
parameters.

def sweep\_parameters(beta\_array, gamma\_array): frame =
SweepFrame(columns=gamma\_array) for gamma in gamma\_array:
frame\[gamma\] = sweep\_beta(beta\_array, gamma) return frame

In Chapter [15](#chap15) we used `linrange` to create an array of values
with a given step size. `linrange` is similar to `linspace`: the
difference is that `linrange` lets you specify the space between values,
and it computes the number of values; `linspace` lets you specify the
number of values, and it computes the space between them.

Here's a version of `run_simulation` that uses `linrange`:

def run\_simulation(system, update\_func): unpack(system)

frame = TimeFrame(columns=init.index) frame.row\[t\_0\] = init ts =
linrange(t\_0, t\_end, dt)

for t in ts: frame.row\[t+dt\] = update\_func(frame.row\[t\], t, system)

\# store the final temperature in T\_final system.T\_final =
get\_last\_value(frame.T)

return frame

In Chapter [16](#chap16) we used `fsolve` to find the value of a
parameter that yields a particular result. We defined an error function:

[]{#hevea_default465}

def error\_func1(r): system = make\_system(r=r) results =
run\_simulation(system, update) return system.T\_final - 70

And passed it to `fsolve` with an initial guess, like this:

solution = fsolve(error\_func1, 0.01) r\_coffee = solution\[0\]

In Chapter [17](#chap17) we used `interpolate`, which returns a
function:

I = interpolate(data.insulin)

which we can call like any other function, passing as an argument either
a single value or a NumPy array:

I(18)

ts = linrange(t\_0, t\_end) I(ts)

We also used a `Params` object, which is a collection of parameters.

params = Params(G0 = 290, k1 = 0.03, k2 = 0.02, k3 = 1e-05)

Chapter [18](#chap18) introduces `run_ode_solver` which computes
numerical solutions to differential equations.

`run_ode_solver` uses a slope function, which is similar to an update
function:

def slope\_func(state, t, system): G, X = state unpack(system)

dGdt = -k1 \* (G - Gb) - X\*G dXdt = k3 \* (I(t) - Ib) - k2 \* X

return dGdt, dXdt

We used `run_ode_solver` to write an error function, which takes a
`Params` object, runs a simulation, and returns the difference between
the simulation results and the data:

def error\_func(params, data): system = make\_system(params, data)
results, details = run\_ode\_solver(system, slope\_func,
t\_eval=data.index) errors = results.G - data.glucose return errors

Then we passed the error function to `fit_leastsq`, which finds the set
of parameters that minimizes the errors:

best\_params, fit\_details = fit\_leastsq(error\_func, params, data)

