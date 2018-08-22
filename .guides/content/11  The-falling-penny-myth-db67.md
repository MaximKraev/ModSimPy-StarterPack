1.1  The falling penny myth {#sec11 .section}
---------------------------

[]{#penny}

Let's see an example of how models are used. You might have heard that a
penny dropped from the top of the Empire State Building would be going
so fast when it hit the pavement that it would be embedded in the
concrete; or if it hit a person, it would break their skull.

[]{#hevea_default41} []{#hevea_default42} []{#hevea_default43}

We can test this myth by making and analyzing a model. To get started,
we'll assume that the effect of air resistance is small. This will turn
out to be a bad assumption, but bear with me.

If air resistance is negligible, the primary force acting on the penny
is gravity, which causes the penny to accelerate downward.
[]{#hevea_default44}

If the initial velocity is 0, the velocity after
[t]{style="font-style:italic"} seconds is [a
t]{style="font-style:italic"}, and the distance the penny has dropped is

  --------------------------------------------------------------------------------------------------------
  [h]{style="font-style:italic"} = [a]{style="font-style:italic"} [t]{style="font-style:italic"}^2^ / 2 
  --------------------------------------------------------------------------------------------------------

Using algebra, we can solve for [t]{style="font-style:italic"}:

+-----------------+-----------------+-----------------+-----------------+
| [t]{style="font | [√]{style="font |   ------------- |                 |
| -style:italic"} | -size:x-large"} | --------------- |                 |
|  =              |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | ----------      |                 |
|                 |                 |    2 [h]{style= |                 |
|                 |                 | "font-style:ita |                 |
|                 |                 | lic"} / [a]{sty |                 |
|                 |                 | le="font-style: |                 |
|                 |                 | italic"}        |                 |
|                 |                 |   ------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | ----------      |                 |
+-----------------+-----------------+-----------------+-----------------+

Plugging in the acceleration of gravity, [a]{style="font-style:italic"}
= 9.8 and the height of the Empire State Building,
[h]{style="font-style:italic"}=381, we get
[t]{style="font-style:italic"} = 8.8. Then computing
[v]{style="font-style:italic"} = [a t]{style="font-style:italic"} we get
a velocity on impact of 86, which is about 190 miles per hour. That
sounds like it could hurt.

Of course, these results are not exact because the model is based on
simplifications. For example, we assume that gravity is constant. In
fact, the force of gravity is different on different parts of the globe,
and gets weaker as you move away from the surface. But these differences
are small, so ignoring them is probably a good choice for this scenario.
[]{#hevea_default45}

On the other hand, ignoring air resistance is not a good choice. Once
the penny gets to about 18, the upward force of air resistance equals
the downward force of gravity, so the penny stops accelerating. After
that, it doesn't matter how far the penny falls; it hits the sidewalk
(or your head) at about 18, much less than 86, as the simple model
predicts.

The statistician George Box famously said "All models are wrong, but
some are useful.\" He was talking about statistical models, but his wise
words apply to all kinds of models. Our first model, which ignores air
resistance, is very wrong, and probably not useful. In the notebook for
this chapter, you will see another model, which assumes that
acceleration is constant until the penny reaches terminal velocity. This
model is also wrong, but it's better, and it's good enough to refute the
myth.

[]{#hevea_default46}

The television show [Mythbusters]{style="font-style:italic"} has tested
the myth of the falling penny more carefully; you can view the results
at
[[https://modsimpy.com/myth]{style="font-family:monospace"}](https://modsimpy.com/myth).
Their work is based on a mathematical model of motion, measurements to
determine the force of air resistance on a penny, and a physical model
of a human head.

[]{#hevea_default47}

