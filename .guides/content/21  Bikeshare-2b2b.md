2.1  Bikeshare {#sec14 .section}
--------------

[]{#modeling}

Imagine a bike share system for students traveling between Olin College
and Wellesley College, which are about 3 miles apart in eastern
Massachusetts.

[]{#hevea_default56} []{#hevea_default57}

Suppose the system contains 12 bikes and two bike racks, one at Olin and
one at Wellesley, each with the capacity to hold 12 bikes.

[]{#hevea_default58}

As students arrive, check out a bike, and ride to the other campus, the
number of bikes in each location changes. In the simulation, we'll need
to keep track of where the bikes are. To do that, I'll create a `State`
object, which is defined in the `modsim` library.

[]{#hevea_default59}

Before we can use the library, we have to `import` it:

from modsim import \*

This line of code is an [import statement]{style="font-weight:bold"}
that tells Python to read the file
[modsim.py]{style="font-family:monospace"} and make the functions it
defines available.

[]{#hevea_default60}

Functions in the `modsim.py` library include `sqrt`, which we used in
the previous section, and `State`, which we are using now. `State`
creates a `State` object, which is a collection of [state
variables]{style="font-weight:bold"}.

[]{#hevea_default61}

bikeshare = State(olin=10, wellesley=2)

The state variables, `olin` and `wellesley`, represent the number of
bikes at each location. The initial values are 10 and 2, indicating that
there are 10 bikes at Olin and 2 at Wellesley. The `State` object
created by `State` is assigned to a new variable named `bikeshare`.

[]{#hevea_default62} []{#hevea_default63}

We can read the variables inside a `State` object using the [dot
operator]{style="font-weight:bold"}, like this:

bikeshare.olin

The result is the value 10. Similarly, for:

bikeshare.wellesley

The result is 2. If you forget what variables a state object has, you
can just type the name:

bikeshare

The result looks like a table with the variable names and their values:

 

[value]{style="font-family:sans-serif;font-weight:bold"}

[olin]{style="font-family:sans-serif;font-weight:bold"}

10

[wellesley]{style="font-family:sans-serif;font-weight:bold"}

2

The state variables and their values make up the
[state]{style="font-weight:bold"} of the system. We can update the state
by assigning new values to the variables. For example, if a student
moves a bike from Olin to Wellesley, we can figure out the new values
and assign them:

[]{#hevea_default64}

bikeshare.olin = 9 bikeshare.wellesley = 3

Or we can use [update operators]{style="font-weight:bold"}, `-=` and
`+=`, to subtract 1 from `olin` and add 1 to `wellesley`:

[]{#hevea_default65} []{#hevea_default66}

bikeshare.olin -= 1 bikeshare.wellesley += 1

The result is the same either way, but the second version is more
versatile.

