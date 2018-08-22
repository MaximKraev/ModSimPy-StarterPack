3.2  More than one State object {#sec24 .section}
-------------------------------

Before we go on, I want to make a few changes to the code from the
previous chapter. First I'll generalize the functions we wrote so they
take a `State` object as a parameter. Then, I'll make the code more
readable by adding documentation.

[]{#hevea_default119}

Here is one of the functions from the previous chapter,
`bike_to_wellesley`:

def bike\_to\_wellesley(): bikeshare.olin -= 1 bikeshare.wellesley += 1

When this function is called, it modifies `bikeshare`. As long as there
is only one `State` object, that's fine, but what if there is more than
one bike share system in the world? Or what if we want to run more than
one simulation?

This function would be more flexible if it took a `State` object as a
parameter. Here's what that looks like:

[]{#hevea_default120}

def bike\_to\_wellesley(state): state.olin -= 1 state.wellesley += 1

The name of the parameter is `state` rather than `bikeshare` as a
reminder that the value of `state` could be any `State` object, not just
`bikeshare`.

This version of `bike_to_wellesley` requires a `State` object as a
parameter, so we have to provide one when we call it:

bike\_to\_wellesley(bikeshare)

Again, the argument we provide gets assigned to the parameter, so this
function call has the same effect as:

  --------------------------------------------------------
  state = bikeshare state.olin -= 1 state.wellesley += 1
  --------------------------------------------------------

Now we can create as many `State` objects as we want:

bikeshare1 = State(olin=10, wellesley=2) bikeshare2 = State(olin=2,
wellesley=10)

And update them independently:

bike\_to\_wellesley(bikeshare1) bike\_to\_wellesley(bikeshare2)

Changes in `bikeshare1` do not affect `bikeshare2`, and vice versa. So
we can simulate different bike share systems, or run multiple
simulations of the same system.

