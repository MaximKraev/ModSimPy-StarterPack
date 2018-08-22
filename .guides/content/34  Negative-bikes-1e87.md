3.4  Negative bikes {#sec26 .section}
-------------------

[]{#negativebikes}

The changes we've made so far improve the quality of the code, but we
haven't done anything to improve the quality of the model yet. Let's do
that now.

[]{#hevea_default126}

Currently the simulation does not check whether a bike is available when
a customer arrives, so the number of bikes at a location can be
negative. That's not very realistic. Here's an updated version of
`bike_to_olin` that fixes the problem:

def bike\_to\_olin(state): if state.wellesley == 0: return
state.wellesley -= 1 state.olin += 1

The first line checks whether the number of bikes at Wellesley is zero.
If so, it uses a a [return statement]{style="font-weight:bold"}, which
causes the function to end immediately, without running the rest of the
statements. So if there are no bikes at Wellesley, we "return\" from
`bike_to_olin` without changing the state.

[]{#hevea_default127} []{#hevea_default128}

We can update `bike_to_wellesley` the same way.

