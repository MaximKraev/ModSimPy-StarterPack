22.2  Vectors {#sec128 .section}
-------------

Now that we are working in two dimensions, we will find it useful to
work with [vector quantities]{style="font-weight:bold"}, that is,
quantities that represent both a magnitude and a direction. We will use
vectors to represent positions, velocities, accelerations, and forces in
two and three dimensions.

[]{#hevea_default519} []{#hevea_default520} []{#hevea_default521}

The `modsim` library provides a `Vector` object that represents a vector
quantity. A `Vector` object is a like a NumPy array; it contains
elements that represent the [components]{style="font-weight:bold"} of
the vector. For example, in a `Vector` that represents a position in
space, the components are the [x]{style="font-style:italic"} and
[y]{style="font-style:italic"} coordinates (and a
[z]{style="font-style:italic"} coordinate in 3-D). A `Vector` object can
also have units, like the quantities we've seen in previous chapters.

[]{#hevea_default522}

You can create a `Vector` by specifying its components. The following
`Vector` represents a point 3 to the right (or east) and 4 up (or north)
from an implicit origin:

[]{#hevea_default523}

A = Vector(3, 4) \* m

You can access the components of a `Vector` by name using the dot
operator, for example, `A.x` or `A.y`. You can also access them by index
using brackets, for example, `A[0]` or `A[1]`.

Similarly, you can get the magnitude and angle using the dot operator,
`A.mag` and `A.angle`. [Magnitude]{style="font-weight:bold"} is the
length of the vector: if the `Vector` represents position, magnitude is
the distance from the origin; if it represents velocity, magnitude is
speed, that is, how fast the object is moving, regardless of direction.

[]{#hevea_default524} []{#hevea_default525}

The [angle]{style="font-weight:bold"} of a `Vector` is its direction,
expressed as the angle in radians from the positive x-axis. In the
Cartesian plane, the angle 0 is due east, and the angle π is due west.

[]{#hevea_default526}

`Vector` objects support most mathematical operations, including
addition and subtraction:

B = Vector(1, 2) \* m A + B A - B

For the definition and graphical interpretation of these operations, see
[[https://modsimpy.com/vecops]{style="font-family:monospace"}](https://modsimpy.com/vecops).

[]{#hevea_default527}

When you add and subtract `Vector` objects, the `modsim` library uses
NumPy and Pint to check that the operands have the same number of
dimensions and units. The notebook for this chapter shows examples for
working with `Vector` objects.

[]{#hevea_default528}

One note on working with angles: in mathematics, we almost always
represent angle in radians, and most Python functions expect angles in
radians. But people often think more naturally in degrees. It can be
awkward, and error-prone, to use both units in the same program.
Fortunately, Pint makes it possible to represent angles using quantities
with units.

[]{#hevea_default529}

As an example, I'll get the `degree` unit from `UNITS`, and create a
quantity that represents 45 degrees:

degree = UNITS.degree angle = 45 \* degree

If we need to convert to radians we can use the `to` function
[]{#hevea_default530}

radian = UNITS.radian rads = angle.to(radian)

If you are given an angle and velocity, you can make a `Vector` using
`pol2cart`, which converts from polar to Cartesian coordinates. To
demonstrate, I'll extract the angle and magnitude of `A`:

[]{#hevea_default531}

mag = A.mag angle = A.angle

And then make a new `Vector` with the same components:

x, y = pol2cart(angle, mag) Vector(x, y)

Another way to represent the direction of `A` is a [unit
vector]{style="font-weight:bold"}, which is a vector with magnitude 1
that points in the same direction as `A`. You can compute a unit vector
by dividing a vector by its magnitude:

[]{#hevea_default532} []{#hevea_default533}

A / A.mag

We can do the same thing using the `hat` function, so named because unit
vectors are conventionally decorated with a hat, like this: Â.

A.hat()

Now let's get back to the game.

