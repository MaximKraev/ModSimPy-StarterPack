25.2  Moment of inertia {#sec141 .section}
-----------------------

In the same way that linear acceleration is related to force by Newton's
second law of motion,
[F]{style="font-style:italic"}=[ma]{style="font-style:italic"}, angular
acceleration is related to torque by another form of Newton's law:

  ---------------------------------------
  τ = [I]{style="font-style:italic"} α 
  ---------------------------------------

Where α is angular acceleration and [I]{style="font-style:italic"} is
[moment of inertia]{style="font-weight:bold"}. Just as mass is what
makes it hard to accelerate an object^[1](#note15){#text15}^, moment of
inertia is what makes it hard to spin an object.

[]{#hevea_default585} []{#hevea_default586}

In the most general case, a 3-D object rotating around an arbitrary
axis, moment of inertia is a tensor, which is a function that takes a
vector as a parameter and returns a vector as a result.

[]{#hevea_default587}

Fortunately, in a system where all rotation and torque happens around a
single axis, we don't have to deal with the most general case. We can
treat moment of inertia as a scalar quantity.

[]{#hevea_default588}

For a small object with mass [m]{style="font-style:italic"}, rotating
around a point at distance [r]{style="font-style:italic"}, the moment of
inertia is [I]{style="font-style:italic"} = [m
r]{style="font-style:italic"}^2^, in SI units . For more complex
objects, we can compute [I]{style="font-style:italic"} by dividing the
object into small masses, computing moments of inertia for each mass,
and adding them up.

However, for most simple shapes, people have already done the
calculations; you can just look up the answers. For example, see
[[https://modsimpy.com/moment]{style="font-family:monospace"}](https://modsimpy.com/moment).

