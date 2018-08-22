22.1  Baseball {#sec127 .section}
--------------

[]{#baseball}

To model the flight of a baseball, we have to make some modeling
decisions. To get started, we ignore any spin that might be on the ball,
and the resulting Magnus force (see
[[https://modsimpy.com/magnus]{style="font-family:monospace"}](https://modsimpy.com/magnus)).
Under this assumption, the ball travels in a vertical plane, so we'll
run simulations in two dimensions, rather than three.

[]{#hevea_default516}

Air resistance has a substantial effect on most projectiles in air, so
we will include a drag force.

[]{#hevea_default517}

To model air resistance, we'll need the mass, frontal area, and drag
coefficient of a baseball. Mass and diameter are easy to find (see
[[https://modsimpy.com/baseball]{style="font-family:monospace"}](https://modsimpy.com/baseball)).
Drag coefficient is only a little harder; according to [The Physics of
Baseball]{style="font-style:italic"}^[1](#note14){#text14}^, the drag
coefficient of a baseball is approximately 0.33 (with no units).

[]{#hevea_default518}

However, this value *does* depend on velocity. At low velocities it
might be as high as 0.5, and at high velocities as low as 0.28.
Furthermore, the transition between these regimes typically happens
exactly in the range of velocities we are interested in, between 20 and
40.

Nevertheless, we'll start with a simple model where the drag coefficient
does not depend on velocity; as an exercise at the end of this chapter,
you will have a chance to implement a more detailed model and see what
effect is has on the results.

But first we need a new computational tool, the `Vector` object.

