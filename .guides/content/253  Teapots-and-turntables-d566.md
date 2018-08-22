25.3  Teapots and turntables {#sec142 .section}
----------------------------

Tables in Chinese restaurants often have a rotating tray or turntable
that makes it easy for customers to share dishes. These turntables are
supported by low-friction bearings that allow them to turn easily and
glide. However, they can be heavy, especially when they are loaded with
food, so they have a high moment of inertia.

[]{#hevea_default589} []{#hevea_default590}

Suppose I am sitting at a table with a pot of tea on the turntable
directly in front of me, and the person sitting directly opposite asks
me to pass the tea. I push on the edge of the turntable with 1 of force
until it has turned 0.5, then let go. The turntable glides until it
comes to a stop 1.5 from the starting position. How much force should I
apply for a second push so the teapot glides to a stop directly opposite
me?

[]{#hevea_default591} []{#hevea_default592} []{#hevea_default593}

We'll answer this question in these steps:

1.  I'll use the results from the first push to estimate the coefficient
    of friction for the turntable.
2.  As an exercise, you'll use that coefficient of friction to estimate
    the force needed to rotate the turntable through the remaining
    angle.

Our simulation will use the following parameters:

1.  The radius of the turntable is 0.5, and its weight is 7.
2.  The teapot weights 0.3, and it sits 0.4 from the center of the
    turntable.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy038.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------
>   Figure 25.1: Diagram of a turntable with a teapot.
>   ----------------------------------------------------
> :::
>
> []{#teapot}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [25.1](#teapot) shows the scenario, where
[F]{style="font-style:italic"} is the force I apply to the turntable at
the perimeter, perpendicular to the moment arm,
[r]{style="font-style:italic"}, and τ is the resulting torque. The blue
circle near the bottom is the teapot.

Here's a `Params` object with these values

params = Params(radius\_disk=0.5\*m, mass\_disk=7\*kg,
radius\_pot=0.4\*m, mass\_pot=0.3\*kg, force=1\*N,
torque\_friction=0.2\*N\*m, theta\_end=0.5\*radian)

[]{#hevea_default594}

`make_system` creates the initial state, `init`, and computes the total
moment of inertia for the turntable and the teapot.

def make\_system(params): unpack(params)

init = State(theta=0, omega=0)

I\_disk = mass\_disk \* radius\_disk\*\*2 / 2 I\_pot = mass\_pot \*
radius\_pot\*\*2

return System(params, init=init, t\_end=20\*s, I=I\_disk+I\_pot)

`theta` represents the initial angle of the table, in ; `omega`
represents the angular velocity in .

`I_disk` is the moment of inertia of the turntable, which is based on
the moment of inertia for a horizontal disk revolving around a vertical
axis through its center:

  -------------------------------------------------------------------------------------------------------------------------------------------
  [I]{style="font-style:italic"}~[disk]{style="font-style:italic"}~ = [m]{style="font-style:italic"} [r]{style="font-style:italic"}^2^ / 2 
  -------------------------------------------------------------------------------------------------------------------------------------------

`I_pot` is the moment of inertia of the teapot, which I treat as a point
mass with:

  ----------------------------------------------------------------------------------------------------------------------------------------
  [I]{style="font-style:italic"}~[point]{style="font-style:italic"}~ = [m]{style="font-style:italic"} [r]{style="font-style:italic"}^2^ 
  ----------------------------------------------------------------------------------------------------------------------------------------

Now we can make a `System` object:

system1 = make\_system(params)

[]{#hevea_default595}

Here's a slope that takes the current state, which contains angle and
angular velocity, and returns the derivatives, angular velocity and
angular acceleration:

def slope\_func(state, t, system): theta, omega = state unpack(system)

torque = radius\_disk \* force - torque\_friction alpha = torque / I

return omega, alpha

[]{#hevea_default596}

In this scenario, the force I apply to the turntable is always
perpendicular to the lever arm, so sinθ = 1 and the torque due to force
is τ = [r F]{style="font-style:italic"}.

In a more detailed model, I might quantify force due to friction and the
moment arm of that force, but that's not really necessary; instead, I
chose to quantify torque due to friction, leaving out the details.

[]{#hevea_default597}

Now we are ready to run the simulation, but first there's a problem we
have to address.

When I stop pushing on the turntable, the angular acceleration changes
abruptly. We could implement the slope function with an `if` statement
that checks the value of `theta` and sets `force` accordingly. And for a
coarse model like this one, that might be fine. But we will get more
accurate results if we simulate the system in two phases:

1.  During the first phase, force is constant, and we run until `theta`
    is 0.5 radians.
2.  During the second phase, force is 0, and we run until `omega` is 0.

Then we can combine the results of the two phases into a single
`TimeFrame`.

[]{#hevea_default598}

Here's the event function I'll use for Phase 1; it stops the simulation
when `theta` reaches `theta_end`, which is when I stop pushing:

def event\_func1(state, t, system): theta, omega = state unpack(system)
return theta - theta\_end

Now we can run the first phase.

results1, details1 = run\_ode\_solver(system1, slope\_func,
events=event\_func1, max\_step=0.1\*s)

Again, I specify `max_step` so the results look smoother when I plot
them, at the cost of some extra computation.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy039.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------------------------
>   Figure 25.2: Angle and angular velocity of a turntable with applied force and friction.
>   -----------------------------------------------------------------------------------------
> :::
>
> []{#chap25-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Before we run the second phase, we have to extract the final time and
state of the first phase.

t\_0 = get\_last\_label(results1) \* s theta, omega =
get\_last\_value(results1) init2 = State(theta=theta\*radian,
omega=omega\*radian/s)

Now we can make a `System` object for Phase 2, with the initial state
from Phase 1, and with `force=0`.

system2 = System(system1, t\_0=t\_0, init=init2, force=0)

For the second phase, we need an event function that stops when the
turntable stops; that is, when angular velocity is 0.

def event\_func2(state, t, system): theta, omega = state return omega

Now we can run the second phase.

results2, details2 = run\_ode\_solver(system2, slope\_func,
events=event\_func2, max\_step=0.1\*s)

Pandas provides `combine_first`, which combines `results1` and
`results2`.

[]{#hevea_default599}

results = results1.combine\_first(results2)

Figure [25.2](#chap25-fig01) shows the results. Angular velocity,
`omega`, increases linearly while I am pushing, and decreases linearly
after I let go. The angle, `theta`, is the integral of angular velocity,
so it forms a parabola during each phase.

In the next section, we'll use this simulation to estimate the torque
due to friction.

