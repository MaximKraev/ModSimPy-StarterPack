23.3  Finishing off the problem {#sec134 .section}
-------------------------------

In the notebook for this chapter, `chap22.ipynb`, you'll have to chance
to finish off the Manny Ramirez problem. There are a few things you'll
have to do:

-   In the previous section the "optimal\" launch angle is the one that
    maximizes range, but that's not what we want. Rather, we want the
    angle that maximizes the height of the ball when it gets to the wall
    (310 feet from home plate). So you'll have to write a height
    function to compute it, and then use `max_bounded` to find the
    revised optimum.
-   Once you can find the optimal angle for any velocity, you have to
    find the minimum velocity that gets the ball over the wall. You'll
    write a function that takes a velocity as a parameter, computes the
    optimal angle for that velocity, and returns the height of the ball,
    at the wall, using the optimal angle.
-   Finally, you'll use `fsolve` to find the velocity that makes the
    optimal height at the wall just barely 37 feet.

    []{#hevea_default561}

The notebook provides some additional hints, but at this point you
should have everything you need. Good luck!

If you enjoy this exercise, you might be interested in this paper: "How
to hit home runs: Optimum baseball bat swing parameters for maximum
range trajectories\", by Sawicki, Hubbard, and Stronge, at
[[https://modsimpy.com/runs]{style="font-family:monospace"}](https://modsimpy.com/runs).

