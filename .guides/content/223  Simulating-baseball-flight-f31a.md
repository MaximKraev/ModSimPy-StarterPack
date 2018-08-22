22.3  Simulating baseball flight {#sec129 .section}
--------------------------------

Let's simulate the flight of a baseball that is batted from home plate
at an angle of 45 and initial speed 40. Using the center of home plate
as the origin, the x-axis is parallel to the ground; the y-axis is
vertical. The initial height is about 1.

As in Section [21.2](#penny_drag), I'll create a `Params` object that
contains the parameters of the system:

[]{#hevea_default534}

params = Params(x = 0 \* m, y = 1 \* m, g = 9.8 \* m/s\*\*2, mass =
145e-3 \* kg, diameter = 73e-3 \* m, rho = 1.2 \* kg/m\*\*3, C\_d = 0.3,
angle = 45 \* degree, velocity = 40 \* m / s, duration = 6 \* s)

The mass, diameter, and drag coefficient of the baseball are from the
sources in Section [22.1](#baseball). The acceleration of gravity, `g`,
is a well-known quantity, and the density of air, `rho`, is based on a
temperature of 20 at sea level (see
[[https://modsimpy.com/tempress]{style="font-family:monospace"}](https://modsimpy.com/tempress)).
I chose the value of `duration` to run the simulation long enough for
the ball to land on the ground.

[]{#hevea_default535}

The following function uses the `Params` object to make a `System`
object. This two-step process makes the code more readable and makes it
easier to work with functions like `fsolve`.

[]{#hevea_default536} []{#hevea_default537}

def make\_system(condition): unpack(params)

theta = np.deg2rad(angle) vx, vy = pol2cart(theta, velocity) init =
State(x=x, y=y, vx=vx, vy=vy) area = np.pi \* (diameter/2)\*\*2

return System(params, init=init, area=area)

`make_system` uses `np.deg2rad` to convert `angle` to radians and
`pol2cart` to compute the [x]{style="font-style:italic"} and
[y]{style="font-style:italic"} components of the initial velocity. Then
it makes the initial `State` object, computes `area`, and creates the
`System` object, which contains all of the variables in `params` plus
`init` and `area`.

[]{#hevea_default538} []{#hevea_default539}

Next we need a function to compute drag force:

def drag\_force(v, system): unpack(system) mag = rho \* v.mag\*\*2 \*
C\_d \* area / 2 direction = -v.hat() f\_drag = direction \* mag return
f\_drag

This function differs from the one in Section [21.3](#bungee) because it
takes `v` as a `Vector` and returns `f_drag` as a `Vector`. It uses the
drag equation to compute the magnitude of the drag force, and the `hat`
function to compute the direction. `-v.hat()` computes a unit vector
pointing in the opposite direction of `v`.

[]{#hevea_default540} []{#hevea_default541} []{#hevea_default542}

Now we're ready for a slope function:

def slope\_func(state, t, system): x, y, vx, vy = state unpack(system)

v = Vector(vx, vy) a\_drag = drag\_force(v, system) / mass a\_grav =
Vector(0, -g)

a = a\_grav + a\_drag

return vx, vy, a.x, a.y

As usual, the parameters of the slope function are a `State` object,
time, and a `System` object. In this example, we don't use `t`, but we
can't leave it out because when `run_ode_solver` calls the slope
function, it always provides the same arguments, whether they are needed
or not.

The `State` object contains four state variables: `x` and `y` are the
components of position; `vx` and `vy` are the components of velocity.

[]{#hevea_default543}

The return values from the slope function are the derivatives of these
components. The derivative of position is velocity, so the first two
return values are just `vx` and `vy`, the values we extracted from the
`State` object. The derivative of velocity is acceleration, and that's
what we have to compute.

[]{#hevea_default544} []{#hevea_default545} []{#hevea_default546}

The total acceleration of the baseball is the sum of accelerations due
to gravity and drag. These quantities have both magnitude and direction,
so they are represented by vectors `Vector` objects.

We already saw how `a_drag` is computed. `a_grav` is a `Vector` with
magnitude `g` pointed in the negative `y` direction.

Using vectors to represent forces and accelerations makes the code
concise, readable, and less error-prone. In particular, when we add
`a_grav` and `a_drag`, the directions are likely to be correct, because
they are encoded in the `Vector` objects. And the units are certain to
be correct, because otherwise Pint would report an error.
[]{#hevea_default547}

As always, we can test the slope function by running it with the initial
conditions:

slope\_func(system.init, 0, system)

We can use an event function to stop the simulation when the ball hits
the ground.

def event\_func(state, t, system): x, y, vx, vy = state return y

The event function takes the same parameters as the slope function, and
returns the y coordinate. When the y coordinate passes through 0, the
simulation stops.

Now we're ready to run the simulation:

ts = linspace(0, system.t\_end, 101) results, details =
run\_ode\_solver(system, slope\_func, events=event\_func,
max\_step=0.2\*s)

`results` is a `TimeFrame` object with one column for each of the state
variables, `x`, `y`, `vx`, and `vy`.

[]{#hevea_default548}

We can get the flight time like this:

flight\_time = get\_last\_label(results) \* s

And the final `x` coordinate like this:

x\_dist = get\_last\_value(results.x) \* m

Notice that the results don't have units; if we want these values to
have the correct units, we have to apply them.

