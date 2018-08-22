Chapter 1  Modeling {#sec10 .chapter}
===================

[]{#chap01}

This book is about modeling and simulation of physical systems. The
following diagram shows what I mean by "modeling\":

[]{#hevea_default20}

\

::: {.center}
![](ModSimPy001.png)
:::

Starting in the lower left, the [system]{style="font-weight:bold"} is
something in the real world we are interested in. Often, it is something
complicated, so we have to decide which details can be left out;
removing details is called [abstraction]{style="font-weight:bold"}.

[]{#hevea_default21}

The result of abstraction is a [model]{style="font-weight:bold"}, which
is a description of the system that includes only the features we think
are essential. A model can be represented in the form of diagrams and
equations, which can be used for mathematical
[analysis]{style="font-weight:bold"}. It can also be implemented in the
form of a computer program, which can run
[simulations]{style="font-weight:bold"}.

[]{#hevea_default22} []{#hevea_default23} []{#hevea_default24}

The result of analysis and simulation might be a
[prediction]{style="font-weight:bold"} about what the system will do, an
[explanation]{style="font-weight:bold"} of why it behaves the way it
does, or a [design]{style="font-weight:bold"} intended to achieve a
purpose.

[]{#hevea_default25} []{#hevea_default26} []{#hevea_default27}

We can [validate]{style="font-weight:bold"} predictions and test designs
by taking [measurements]{style="font-weight:bold"} from the real world
and comparing the [data]{style="font-weight:bold"} we get with the
results from analysis and simulation.

[]{#hevea_default28} []{#hevea_default29}

For any physical system, there are many possible models, each one
including and excluding different features, or including different
levels of detail. The goal of the modeling process is to find the model
best suited to its purpose (prediction, explanation, or design).

[]{#hevea_default30}

Sometimes the best model is the most detailed. If we include more
features, the model is more realistic, and we expect its predictions to
be more accurate.

[]{#hevea_default31}

But often a simpler model is better. If we include only the essential
features and leave out the rest, we get models that are easier to work
with, and the explanations they provide can be clearer and more
compelling.

[]{#hevea_default32}

As an example, suppose someone asked you why the orbit of the Earth is
nearly elliptical. If you model the Earth and Sun as point masses
(ignoring their actual size), compute the gravitational force between
them using Newton's law of universal gravitation, and compute the
resulting orbit using Newton's laws of motion, you can show that the
result is an ellipse.

[]{#hevea_default33} []{#hevea_default34}

Of course, the actual orbit of Earth is not a perfect ellipse, because
of the gravitational forces of the Moon, Jupiter, and other objects in
the solar system, and because Newton's laws of motion are only
approximately true (they don't take into account relativistic effects).

[]{#hevea_default35} []{#hevea_default36}

But adding these features to the model would not improve the
explanation; more detail would only be a distraction from the
fundamental cause. However, if the goal is to predict the position of
the Earth with great precision, including more details might be
necessary.

Choosing the best model depends on what the model is for. It is usually
a good idea to start with a simple model, even if it is likely to be too
simple, and test whether it is good enough for its purpose. Then you can
add features gradually, starting with the ones you expect to be most
essential. This process is called [iterative
modeling]{style="font-weight:bold"}.

Comparing results of successive models provides a form of [internal
validation]{style="font-weight:bold"}, so you can catch conceptual,
mathematical, and software errors. And by adding and removing features,
you can tell which ones have the biggest effect on the results, and
which can be ignored.

[]{#hevea_default37} []{#hevea_default38} []{#hevea_default39}
[]{#hevea_default40}

Comparing results to data from the real world provides [external
validation]{style="font-weight:bold"}, which is generally the strongest
test.

