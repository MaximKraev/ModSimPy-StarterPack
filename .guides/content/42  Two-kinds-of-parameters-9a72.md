4.2  Two kinds of parameters {#sec31 .section}
----------------------------

This version of `run_simulation` always starts with the same initial
condition, 10 bikes at Olin and 2 bikes at Wellesley, and the same
values of `p1`, `p2`, and `num_steps`. Taken together, these five values
are the [parameters of the model]{style="font-weight:bold"}, which are
values that determine the behavior of the system.

[]{#hevea_default144} []{#hevea_default145}

It is easy to get the parameters of a model confused with the parameters
of a function. They are closely related ideas; in fact, it is common for
the parameters of the model to appear as parameters in functions. For
example, we can write a more general version of `run_simulation` that
takes `p1` and `p2` as function parameters:

def run\_simulation(p1, p2, num\_steps): state = State(olin=10,
wellesley=2, olin\_empty=0, wellesley\_empty=0)

for i in range(num\_steps): step(state, p1, p2)

return state

Now we can run it with different arrival rates, like this:

state = run\_simulation(0.6, 0.3, 60)

In this example, `0.6` gets assigned to `p1`, `0.3` gets assigned to
`p2`, and `60` gets assigned to `num_steps`.

Now we can call `run_simulation` with different parameters and see how
the metrics, like the number of unhappy customers, depend on the
parameters. But before we do that, we need a new version of a for loop.

[]{#hevea_default146}

