1.2  Computation {#sec12 .section}
----------------

[]{#computation}

There are (at least) two ways to work with mathematical models,
[analysis]{style="font-weight:bold"} and
[simulation]{style="font-weight:bold"}. Analysis often involves algebra
and other kinds of symbolic manipulation. Simulation often involves
computers. []{#hevea_default48} []{#hevea_default49}

In this book we do some analysis and a lot of simulation; along the way,
I discuss the pros and cons of each. The primary tools we use for
simulation are the Python programming language and Jupyter, which is an
environment for writing and running programs.

As a first example, I'll show you how I computed the results from the
previous section using Python.

First I create a [variable]{style="font-weight:bold"} to represent
acceleration.

[]{#hevea_default50} []{#hevea_default51}

a = 9.8 \* meter / second\*\*2

A variable is a name that corresponds to a value. In this example, the
name is `a` and the value is the number `9.8` multiplied by the units
`meter / second**2`. This example demonstrates some of the symbols
Python uses to perform mathematical operations: []{#hevea_default52}

  --------------------------------------- ------------------------------------
  [Operation]{style="font-weight:bold"}    [Symbol]{style="font-weight:bold"}
  Addition                                                `+`
  Subtraction                                             `-`
  Multiplication                                          `*`
  Division                                                `/`
  Exponentiation                                          `**`
  --------------------------------------- ------------------------------------

Next, we can compute the time it takes for the penny to drop 381, the
height of the Empire State Building.

h = 381 \* meter t = sqrt(2 \* h / a)

These lines create two more variables: `h` gets the height of the
building in meters; `t` gets the time, in seconds, for the penny to fall
to the sidewalk. `sqrt` is a [function]{style="font-weight:bold"} that
computes square roots. Python keeps track of units, so the result, `t`,
has the correct units, seconds. []{#hevea_default53}
[]{#hevea_default54} []{#hevea_default55}

Finally, we can compute the velocity of the penny after
[t]{style="font-style:italic"} seconds:

v = a \* t

The result is about 86, again with the correct units.

This example demonstrates analysis and computation using Python. Next
we'll see an example of simulation.

Before you go on, you might want to read the notebook for this chapter,
`chap01.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

