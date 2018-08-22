20.1  Newton's second law of motion {#sec118 .section}
-----------------------------------

First order ODEs can be written

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [G]{style="font-style:italic"} |
| --                                | ([x]{style="font-style:italic"},  |
|    [dy]{style="font-style:italic" | [y]{style="font-style:italic"})   |
| }                                 |                                   |
|    [dx]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

where [G]{style="font-style:italic"} is some function of
[x]{style="font-style:italic"} and [y]{style="font-style:italic"} (see
[[https://modsimpy.com/ode]{style="font-family:monospace"}](https://modsimpy.com/ode)).
Second order ODEs can be written

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = [H]{style="f |   ------------- | )               |
| --------------- | ont-style:itali | --------------- |                 |
| --------------- | c"}([x]{style=" | -----           |                 |
| --------------- | font-style:ital |    [dy]{style=" |                 |
| -------         | ic"}, [y]{style | font-style:ital |                 |
|    [d]{style="f | ="font-style:it | ic"}            |                 |
| ont-style:itali | alic"},         |    [dt]{style=" |                 |
| c"}^2^[y]{style |                 | font-style:ital |                 |
| ="font-style:it |                 | ic"}            |                 |
| alic"}          |                 |   ------------- |                 |
|                 |                 | --------------- |                 |
|   [dx]{style="f |                 | -----           |                 |
| ont-style:itali |                 |                 |                 |
| c"}^2^          |                 |                 |                 |
|   ------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| -------         |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+

where [H]{style="font-style:italic"} is a function of
[x]{style="font-style:italic"}, [y]{style="font-style:italic"}, and
[dy]{style="font-style:italic"}/[dx]{style="font-style:italic"}.

In this chapter, we will work with one of the most famous and useful
second order ODE, Newton's second law of motion:

  -------------------------------------------------------------------------------------------------
  [F]{style="font-style:italic"} = [m]{style="font-style:italic"} [a]{style="font-style:italic"} 
  -------------------------------------------------------------------------------------------------

where [F]{style="font-style:italic"} is a force or the total of a set of
forces, [m]{style="font-style:italic"} is the mass of a moving object,
and [a]{style="font-style:italic"} is its acceleration.

[]{#hevea_default471} []{#hevea_default472} []{#hevea_default473}
[]{#hevea_default474} []{#hevea_default475}

Newton's law might not look like a differential equation, until we
realize that acceleration, [a]{style="font-style:italic"}, is the second
derivative of position, [y]{style="font-style:italic"}, with respect to
time, [t]{style="font-style:italic"}. With the substitution

+-----------------------+-----------------------+-----------------------+
| [a]{style="font-style |   ------------------- |                       |
| :italic"} =           | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ----                  |                       |
|                       |    [d]{style="font-st |                       |
|                       | yle:italic"}^2^[y]{st |                       |
|                       | yle="font-style:itali |                       |
|                       | c"}                   |                       |
|                       |                  [dt] |                       |
|                       | {style="font-style:it |                       |
|                       | alic"}^2^             |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ----                  |                       |
+-----------------------+-----------------------+-----------------------+

Newton's law can be written

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [F]{style="font-style:italic"} |
| --------------------------------- |  / [m]{style="font-style:italic"} |
| -                                 |                                   |
|    [d]{style="font-style:italic"} |                                   |
| ^2^[y]{style="font-style:italic"} |                                   |
|                  [dt]{style="font |                                   |
| -style:italic"}^2^                |                                   |
|   ------------------------------- |                                   |
| --------------------------------- |                                   |
| -                                 |                                   |
+-----------------------------------+-----------------------------------+

And that's definitely a second order ODE. In general,
[F]{style="font-style:italic"} can be a function of time, position, and
velocity.

Of course, this "law\" is really a model, in the sense that it is a
simplification of the real world. Although it is often approximately
true:

-   It only applies if [m]{style="font-style:italic"} is constant. If
    mass depends on time, position, or velocity, we have to use a more
    general form of Newton's law (see
    [[https://modsimpy.com/varmass]{style="font-family:monospace"}](https://modsimpy.com/varmass)).

    []{#hevea_default476}

-   It is not a good model for very small things, which are better
    described by another model, quantum mechanics.

    []{#hevea_default477}

-   And it is not a good model for things moving very fast, which are
    better described by yet another model, relativistic mechanics.

    []{#hevea_default478}

However, for medium-sized things with constant mass, moving at
medium-sized speeds, Newton's model is phenomenally useful. If we can
quantify the forces that act on such an object, we can predict how it
will move.

