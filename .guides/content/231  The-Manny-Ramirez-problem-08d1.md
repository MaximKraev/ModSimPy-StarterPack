23.1  The Manny Ramirez problem {#sec132 .section}
-------------------------------

[]{#manny}

Manny Ramirez is a former member of the Boston Red Sox (an American
baseball team) who was notorious for a relaxed attitude and a taste for
practical jokes that his managers did not always appreciate. Our
objective in this chapter is to solve the following Manny-inspired
problem:

[What is the minimum effort required to hit a home run in Fenway
Park?]{style="font-style:italic"}

Fenway Park is a baseball stadium in Boston, Massachusetts. One of its
most famous features is the "Green Monster\", which is a wall in left
field that is unusually close to home plate, only 310 feet away. To
compensate for the short distance, the wall is unusually high, at 37
feet (see
[[https://modsimpy.com/wally]{style="font-family:monospace"}](https://modsimpy.com/wally)).

[]{#hevea_default551} []{#hevea_default552} []{#hevea_default553}
[]{#hevea_default554} []{#hevea_default555}

We want to find the minimum velocity at which a ball can leave home
plate and still go over the Green Monster. We'll proceed in the
following steps:

1.  For a given velocity, we'll find the optimal [launch
    angle]{style="font-weight:bold"}, that is, the angle the ball should
    leave home plate to maximize its height when it reaches the wall.

    []{#hevea_default556}

2.  Then we'll find the minimal velocity that clears the wall, given
    that it has the optimal launch angle.

We'll use the same model as in the previous chapter, with this `Params`
object:

params = Params(x = 0 \* m, y = 1 \* m, g = 9.8 \* m/s\*\*2, mass =
145e-3 \* kg, diameter = 73e-3 \* m, rho = 1.2 \* kg/m\*\*3, C\_d = 0.3,
angle = 45 \* degree, velocity = 40 \* m / s, t\_end = 20 \* s)

This version of `make_system`:

def make\_system(condition): unpack(params)

theta = np.deg2rad(angle) vx, vy = pol2cart(theta, velocity) init =
State(x=x, y=y, vx=vx, vy=vy) area = np.pi \* (diameter/2)\*\*2

return System(params, init=init, area=area)

This slope function:

def slope\_func(state, t, system): x, y, vx, vy = state unpack(system)

V = Vector(vx, vy) a\_drag = drag\_force(V, system) / mass a\_grav =
Vector(0, -g)

a = a\_grav + a\_drag

return vx, vy, a.x, a.y

And this event function:

def event\_func(state, t, system): x, y, vx, vy = state return y

