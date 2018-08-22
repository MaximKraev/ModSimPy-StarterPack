4.1  Functions that return values {#sec30 .section}
---------------------------------

We have seen several functions that return values; for example, when you
run `sqrt`, it returns a number you can assign to a variable.

[]{#hevea_default141}

t = sqrt(2 \* h / a)

When you run `State`, it returns a new `State` object:

bikeshare = State(olin=10, wellesley=2)

Not all functions have return values. For example, when you run `step`,
it updates a `State` object, but it doesn't return a value.

To write functions that return values, we can use a second form of the
`return` statement, like this:

[]{#hevea_default142} []{#hevea_default143}

def add\_five(x): return x + 5

`add_five` takes a parameter, `x`, which could be any number. It
computes `x + 5` and returns the result. So if we run it like this, the
result is `8`:

add\_five(3)

As a more useful example, here's a version of `run_simulation` that
creates a `State` object, runs a simulation, and then returns the
`State` object as a result:

def run\_simulation(): p1 = 0.4 p2 = 0.2 num\_steps = 60

state = State(olin=10, wellesley=2, olin\_empty=0, wellesley\_empty=0)

for i in range(num\_steps): step(state, p1, p2)

return state

If we call `run_simulation` like this:

state = run\_simulation()

It assigns the `State` object from `run_simulation` to `state`, which
contains the metrics we are interested in:

print(state.olin\_empty, state.wellesley\_empty)

