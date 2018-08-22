21.1  Drag force {#sec122 .section}
----------------

[]{#drag}

As an object moves through a fluid, like air, the object applies force
to the air and, in accordance with Newton's third law of motion, the air
applies an equal and opposite force to the object (see
[[https://modsimpy.com/newton]{style="font-family:monospace"}](https://modsimpy.com/newton)).

[]{#hevea_default494} []{#hevea_default495} []{#hevea_default496}
[]{#hevea_default497}

The direction of this [drag force]{style="font-weight:bold"} is opposite
the direction of travel, and its magnitude is given by the drag equation
(see
[[https://modsimpy.com/drageq]{style="font-family:monospace"}](https://modsimpy.com/drageq)):

+-----------------------+-----------------------+-----------------------+
| [F]{style="font-style |   ---                 |  ρ [v]{style="font-st |
| :italic"}~[d]{style=" |    1                  | yle:italic"}^2^ [C]{s |
| font-style:italic"}~  |    2                  | tyle="font-style:ital |
| =                     |   ---                 | ic"}~[d]{style="font- |
|                       |                       | style:italic"}~ [A]{s |
|                       |                       | tyle="font-style:ital |
|                       |                       | ic"}                  |
+-----------------------+-----------------------+-----------------------+

where

-   [F]{style="font-style:italic"}~[d]{style="font-style:italic"}~ is
    force due to drag, in newtons ().
-   ρ is the density of the fluid in . []{#hevea_default498}
-   [v]{style="font-style:italic"} is the magnitude of velocity in .
    []{#hevea_default499}
-   [A]{style="font-style:italic"} is the [reference
    area]{style="font-weight:bold"} of the object, in . In this context,
    the reference area is the projected frontal area, that is, the
    visible area of the object as seen from a point on its line of
    travel (and far away).

    []{#hevea_default500}

-   [C]{style="font-style:italic"}~[d]{style="font-style:italic"}~ is
    the [drag coefficient]{style="font-weight:bold"}, a dimensionless
    quantity that depends on the shape of the object (including length
    but not frontal area), its surface properties, and how it interacts
    with the fluid.

    []{#hevea_default501}

For objects moving at moderate speeds through air, typical drag
coefficients are between 0.1 and 1.0, with blunt objects at the high end
of the range and streamlined objects at the low end (see
[[https://modsimpy.com/dragco]{style="font-family:monospace"}](https://modsimpy.com/dragco)).

For simple geometric objects we can sometimes guess the drag coefficient
with reasonable accuracy; for more complex objects we usually have to
take measurements and estimate
[C]{style="font-style:italic"}~[d]{style="font-style:italic"}~ from the
data.

Of course, the drag equation is itself a model, based on the assumption
that [C]{style="font-style:italic"}~[d]{style="font-style:italic"}~ does
not depend on the other terms in the equation: density, velocity, and
area. For objects moving in air at moderate speeds (below 45 mph or 20),
this model might be good enough, but we should remember to revisit this
assumption.

For the falling penny, we can use measurements to estimate
[C]{style="font-style:italic"}~[d]{style="font-style:italic"}~. In
particular, we can measure [terminal
velocity]{style="font-weight:bold"},
[v]{style="font-style:italic"}~[term]{style="font-style:italic"}~, which
is the speed where drag force equals force due to gravity:

+-----------------------------------+-----------------------------------+
|   ---                             |  ρ [v]{style="font-style:italic"} |
|    1                              | ~[term]{style="font-style:italic" |
|    2                              | }~^2^ [C]{style="font-style:itali |
|   ---                             | c"}~[d]{style="font-style:italic" |
|                                   | }~ [A]{style="font-style:italic"} |
|                                   |  = [m]{style="font-style:italic"} |
|                                   |  [g]{style="font-style:italic"}   |
+-----------------------------------+-----------------------------------+

where [m]{style="font-style:italic"} is the mass of the object and
[g]{style="font-style:italic"} is acceleration due to gravity. Solving
this equation for
[C]{style="font-style:italic"}~[d]{style="font-style:italic"}~ yields:

+-----------------------+-----------------------+-----------------------+
| [C]{style="font-style |   ------------------- |                       |
| :italic"}~[d]{style=" | --------------------- |                       |
| font-style:italic"}~  | --------------------- |                       |
| =                     | --------------------- |                       |
|                       | --------------------- |                       |
|                       |                       |                       |
|                       |  2 [m]{style="font-st |                       |
|                       | yle:italic"} [g]{styl |                       |
|                       | e="font-style:italic" |                       |
|                       | }                     |                       |
|                       |    ρ [v]{style="font- |                       |
|                       | style:italic"}~[term] |                       |
|                       | {style="font-style:it |                       |
|                       | alic"}~^2^ [A]{style= |                       |
|                       | "font-style:italic"}  |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
+-----------------------+-----------------------+-----------------------+

According to [Mythbusters]{style="font-style:italic"}, the terminal
velocity of a penny is between 35 and 65 mph (see
[[https://modsimpy.com/mythbust]{style="font-family:monospace"}](https://modsimpy.com/mythbust)).
Using the low end of their range, 40 mph or about 18, the estimated
value of [C]{style="font-style:italic"}~[d]{style="font-style:italic"}~
is 0.44, which is close to the drag coefficient of a smooth sphere.

[]{#hevea_default502} []{#hevea_default503}

Now we are ready to add air resistance to the model.

