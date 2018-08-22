26.6  Simulating a yo-yo {#sec150 .section}
------------------------

Suppose you are holding a yo-yo with a length of string wound around its
axle, and you drop it while holding the end of the string stationary. As
gravity accelerates the yo-yo downward, tension in the string exerts a
force upward. Since this force acts on a point offset from the center of
mass, it exerts a torque that causes the yo-yo to spin.

[]{#hevea_default630} []{#hevea_default631} []{#hevea_default632}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy042.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------------------------------------------------------------------------------
>   Figure 26.3: Diagram of a yo-yo showing forces due to gravity and tension in the string, the lever arm of tension, and the resulting torque.
>   ----------------------------------------------------------------------------------------------------------------------------------------------
> :::
>
> []{#yoyo}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [??](#yoyo) is a diagram of the forces on the yo-yo and the
resulting torque. The outer shaded area shows the body of the yo-yo. The
inner shaded area shows the rolled up string, the radius of which
changes as the yo-yo unrolls.

[]{#hevea_default633}

In this model, we can't figure out the linear and angular acceleration
independently; we have to solve a system of equations:

+-----------------------------------+-----------------------------------+
|                                   |   ------------------------------- |
|                                   | --------------------------------  |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   |  --- --- --- --- --- --- --- ---  |
|                                   | ---                               |
|                                   |     [∑]{style="font-size:xx-large |
|                                   | "}[F]{style="font-style:italic"}  |
|                                   | = [m]{style="font-style:italic"}  |
|                                   | [a]{style="font-style:italic"}    |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   | [∑]{style="font-size:xx-large"}τ  |
|                                   | = [I]{style="font-style:italic"}  |
|                                   | α                                 |
|                                   |                                   |
|                                   |                                   |
|                                   |   ------------------------------- |
|                                   | --------------------------------  |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   |  --- --- --- --- --- --- --- ---  |
|                                   | ---                               |
+-----------------------------------+-----------------------------------+

where the summations indicate that we are adding up forces and torques.

As in the previous examples, linear and angular velocity are related
because of the way the string unrolls:

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = −[r]{style=" |   ------------- |                 |
| --------------- | font-style:ital | --------------- |                 |
| -----           | ic"}            | ------          |                 |
|    [dy]{style=" |                 |    [d]{style="f |                 |
| font-style:ital |                 | ont-style:itali |                 |
| ic"}            |                 | c"} θ           |                 |
|    [dt]{style=" |                 |    [dt]{style=" |                 |
| font-style:ital |                 | font-style:ital |                 |
| ic"}            |                 | ic"}            |                 |
|   ------------- |                 |   ------------- |                 |
| --------------- |                 | --------------- |                 |
| -----           |                 | ------          |                 |
+-----------------+-----------------+-----------------+-----------------+

In this example, the linear and angular accelerations have opposite
sign. As the yo-yo rotates counter-clockwise, θ increases and
[y]{style="font-style:italic"}, which is the length of the rolled part
of the string, decreases.

Taking the derivative of both sides yields a similar relationship
between linear and angular acceleration:

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = −[r]{style=" |   ------------- |                 |
| --------------- | font-style:ital | --------------- |                 |
| --------------- | ic"}            | ---------       |                 |
| --------------- |                 |    [d]{style="f |                 |
| --------        |                 | ont-style:itali |                 |
|    [d]{style="f |                 | c"}^2^ θ        |                 |
| ont-style:itali |                 |    [dt]{style=" |                 |
| c"}^2^ [y]{styl |                 | font-style:ital |                 |
| e="font-style:i |                 | ic"}^2^         |                 |
| talic"}         |                 |   ------------- |                 |
|                 |                 | --------------- |                 |
|    [dt]{style=" |                 | ---------       |                 |
| font-style:ital |                 |                 |                 |
| ic"}^2^         |                 |                 |                 |
|   ------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| --------------- |                 |                 |                 |
| --------        |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+

Which we can write more concisely:

  ---------------------------------------------------------------------
  [a]{style="font-style:italic"} = −[r]{style="font-style:italic"} α 
  ---------------------------------------------------------------------

This relationship is not a general law of nature; it is specific to
scenarios like this where there is rolling without stretching or
slipping.

[]{#hevea_default634}

Because of the way we've set up the problem,
[y]{style="font-style:italic"} actually has two meanings: it represents
the length of the rolled string and the height of the yo-yo, which
decreases as the yo-yo falls. Similarly, [a]{style="font-style:italic"}
represents acceleration in the length of the rolled string and the
height of the yo-yo.

We can compute the acceleration of the yo-yo by adding up the linear
forces:

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [∑]{style="font-size:xx-large"}[F]{style="font-style:italic"} = [T]{style="font-style:italic"} − [mg]{style="font-style:italic"} = [ma]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

Where [T]{style="font-style:italic"} is positive because the tension
force points up, and [mg]{style="font-style:italic"} is negative because
gravity points down.

Because gravity acts on the center of mass, it creates no torque, so the
only torque is due to tension:

  --------------------------------------------------------------------------------------------------------------------------------------
  [∑]{style="font-size:xx-large"}τ = [T]{style="font-style:italic"} [r]{style="font-style:italic"} = [I]{style="font-style:italic"} α 
  --------------------------------------------------------------------------------------------------------------------------------------

Positive (upward) tension yields positive (counter-clockwise) angular
acceleration.

[]{#hevea_default635}

Now we have three equations in three unknowns,
[T]{style="font-style:italic"}, [a]{style="font-style:italic"}, and α,
with [I]{style="font-style:italic"}, [m]{style="font-style:italic"},
[g]{style="font-style:italic"}, and [r]{style="font-style:italic"} as
known quantities. It is simple enough to solve these equations by hand,
but we can also get SymPy to do it for us:

T, a, alpha, I, m, g, r = symbols('T a alpha I m g r') eq1 = Eq(a, -r \*
alpha) eq2 = Eq(T - m\*g, m \* a) eq3 = Eq(T \* r, I \* alpha) soln =
solve(\[eq1, eq2, eq3\], \[T, a, alpha\])

The results are

+-----------------------------------+-----------------------------------+
|                                   |   ------------------------------- |
|                                   | - ------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | -------- --- --- --- --- --- ---  |
|                                   | --- --- ---                       |
|                                   |     [T]{style="font-style:italic" |
|                                   | } = [m]{style="font-style:italic" |
|                                   | } [g]{style="font-style:italic"}  |
|                                   | [I]{style="font-style:italic"} /  |
|                                   | [I]{style="font-style:italic"}^\* |
|                                   | ^                                 |
|                                   |                                   |
|                                   |     [a]{style="font-style:italic" |
|                                   | } = −[m]{style="font-style:italic |
|                                   | "} [g]{style="font-style:italic"} |
|                                   |  [r]{style="font-style:italic"}^2 |
|                                   | ^ / [I]{style="font-style:italic" |
|                                   | }^\*^                             |
|                                   |                                   |
|                                   |                                   |
|                                   | α = [m]{style="font-style:italic" |
|                                   | } [g]{style="font-style:italic"}  |
|                                   | [r]{style="font-style:italic"} /  |
|                                   | [I]{style="font-style:italic"}^\* |
|                                   | ^                                 |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |                                   |
|                                   |   ------------------------------- |
|                                   | - ------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | -------- --- --- --- --- --- ---  |
|                                   | --- --- ---                       |
+-----------------------------------+-----------------------------------+

where [I]{style="font-style:italic"}^\*^ is the augmented moment of
inertia, [I]{style="font-style:italic"} + [m
r]{style="font-style:italic"}^2^. To simulate the system, we don't
really need [T]{style="font-style:italic"}; we can plug
[a]{style="font-style:italic"} and α directly into the slope function.

In the repository for this book, you will find a notebook, `yoyo.ipynb`,
which contains the derivation of these equations and starter code for
this case study. Use it to implement and test this model.
