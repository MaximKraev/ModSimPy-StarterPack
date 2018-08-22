21.2  Implementation {#sec123 .section}
--------------------

[]{#penny_drag}

As the number of system parameters increases, and as we need to do more
work to compute them, we will find it useful to define a `Params` object
to contain the quantities we need to make a `System` object. `Params`
objects are similar to `System` and `State` objects; in fact, all three
have the same capabilities. I have given them different names to
document the different roles they play.

[]{#hevea_default504}

Here's the `Params` object for the falling penny:

params = Params(height = 381 \* m, v\_init = 0 \* m / s, g = 9.8 \*
m/s\*\*2, mass = 2.5e-3 \* kg, diameter = 19e-3 \* m, rho = 1.2 \*
kg/m\*\*3, v\_term = 18 \* m / s)

The mass and diameter are from
[[https://modsimpy.com/penny]{style="font-family:monospace"}](https://modsimpy.com/penny).
The density of air depends on temperature, barometric pressure (which
depends on altitude), humidity, and composition
([[https://modsimpy.com/density]{style="font-family:monospace"}](https://modsimpy.com/density)).
I chose a value that might be typical in New York City at 20.

[]{#hevea_default505} []{#hevea_default506}

Here's a version of `make_system` that takes a `Params` object and
returns a `System`:

[]{#hevea_default507}

def make\_system(params): unpack(params)

area = np.pi \* (diameter/2)\*\*2 C\_d = 2 \* mass \* g / (rho \* area
\* v\_term\*\*2) init = State(y=height, v=v\_init) t\_end = 30 \* s

return System(params, area=area, C\_d=C\_d, init=init, t\_end=t\_end)

The first argument of `System` is `params`, so the result contains all
of the parameters in `params`, plus `init`, `area`, and `C_d`.

It might not be obvious why we need `Params` objects, but they will turn
out to be useful soon.

We can make a `System` like this:

system = make\_system(params)

Now here's a version of the slope function that includes drag:

[]{#hevea_default508} []{#hevea_default509} []{#hevea_default510}

def slope\_func(state, t, system): y, v = state unpack(system)

f\_drag = rho \* v\*\*2 \* C\_d \* area / 2 a\_drag = f\_drag / mass

dydt = v dvdt = -g + a\_drag

return dydt, dvdt

`f_drag` is force due to drag, based on the drag equation. `a_drag` is
acceleration due to drag, based on Newton's second law.

[]{#hevea_default511}

To compute total acceleration, we add accelerations due to gravity and
drag. `g` is negated because it is in the direction of decreasing `y`,
and `a_drag` is positive because it is in the direction of increasing
`y`. In the next chapter we will use `Vector` objects to keep track of
the direction of forces and add them up in a less error-prone way.

To stop the simulation when the penny hits the sidewalk, we'll use the
event function from Section [20.3](#events):

def event\_func(state, t, system): y, v = state return y

Now we can run the simulation like this:

[]{#hevea_default512}

results, details = run\_ode\_solver(system, slope\_func,
events=event\_func, max\_step=0.5\*s)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy031.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------
>   Figure 21.1: Height of the penny versus time, with air resistance.
>   --------------------------------------------------------------------
> :::
>
> []{#chap09-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [21.1](#chap09-fig02) shows the result. It only takes a few
seconds for the penny to accelerate up to terminal velocity; after that,
velocity is constant, so height as a function of time is a straight
line.

[]{#hevea_default513}

In the notebook for this chapter, you'll have a chance to extend this
model.

