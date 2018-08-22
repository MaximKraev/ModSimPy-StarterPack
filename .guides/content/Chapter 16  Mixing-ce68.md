Chapter 16  Mixing {#sec95 .chapter}
==================

[]{#chap16}

In the previous chapter we wrote a simulation of a cooling cup of
coffee. Given the initial temperature of the coffee, the temperature of
the atmosphere, and the rate parameter, `r`, we can predict how the
temperature of the coffee will change over time.

In general, we don't know the value of `r`, but we can use measurements
to estimate it. Given an initial temperature, a final temperature, and
the time in between, we can find `r` by trial and error.

In this chapter, we'll see a better way to find `r`, using a SciPy
function called `fsolve`.

And the we'll get back to solving the coffee cooling problem.

