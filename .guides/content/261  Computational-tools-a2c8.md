26.1  Computational tools {#sec145 .section}
-------------------------

In Chapter [20](#chap20) we rewrote a second order differential equation
as a system of first order equations, and solved them using a slope
function like this:

def slope\_func(state, t, system): y, v = state unpack(system)

dydt = v dvdt = -g

return dydt, dvdt

We used the `crossings` function to search for zero-crossings in the
simulation results.

Then we used an event function like this:

def event\_func(state, t, system): y, v = state return y

To stop the simulation when an event occurs. Notice that the event
function takes the same parameters as the slope function.

In Chapter [21](#chap21) we developed a model of air resistance and used
a `Params` object, which is a collection of parameters:

params = Params(height = 381 \* m, v\_init = 0 \* m / s, g = 9.8 \*
m/s\*\*2, mass = 2.5e-3 \* kg, diameter = 19e-3 \* m, rho = 1.2 \*
kg/m\*\*3, v\_term = 18 \* m / s)

And we saw a new way to create a `System` object, copying the variables
from a `Params` object and adding or changing variables:

return System(params, area=area, C\_d=C\_d, init=init, t\_end=t\_end)

We also used the `gradient` function to estimate acceleration, given
velocity:

a = gradient(results.v)

Chapter [22](#chap22) introduces `Vector` objects, which can represent
vector quantities, like position, velocity, force, and acceleration, in
2 or 3 dimensions.

A = Vector(3, 4) \* m

It also introduces trajectory plots, which show the path of an object in
two dimensions:

plot(results.x, results.y, label='trajectory')

In Chapter [23](#chap23) we define a range function that computes the
distance a baseball flies as a function of launch angle:

def range\_func(angle, params): params = Params(params, angle=angle)
system = make\_system(params) results, details =
run\_ode\_solver(system, slope\_func, events=event\_func) x\_dist =
get\_last\_value(results.x) \* m return x\_dist

Then we use `max_bounded` to find the launch angle that maximizes range:

res = max\_bounded(range\_func, \[0, 90\], params)

With that, your toolkit is complete. Chapter [24](#chap24) and
Chapter [25](#chap25) introduce the physics of rotation, but no new
computational tools.

