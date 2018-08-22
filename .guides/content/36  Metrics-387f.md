3.6  Metrics {#sec28 .section}
------------

[]{#metrics}

Getting back to the bike share system, at this point we have the ability
to simulate the behavior of the system. Since the arrival of customers
is random, the state of the system is different each time we run a
simulation. Models like this are called random or
[stochastic]{style="font-weight:bold"}; models that do the same thing
every time they run are [deterministic]{style="font-weight:bold"}.

[]{#hevea_default138} []{#hevea_default139}

Suppose we want to use our model to predict how well the bike share
system will work, or to design a system that works better. First, we
have to decide what we mean by "how well\" and "better\".

From the customer's point of view, we might like to know the probability
of finding an available bike. From the system-owner's point of view, we
might want to minimize the number of customers who don't get a bike when
they want one, or maximize the number of bikes in use. Statistics like
these that quantify how well the system works are called
[metrics]{style="font-weight:bold"}.

[]{#hevea_default140}

As a simple example, let's measure the number of unhappy customers.
Here's a version of `bike_to_olin` that keeps track of the number of
customers who arrive at a station with no bikes:

def bike\_to\_olin(state): if state.wellesley == 0:
state.wellesley\_empty += 1 return state.wellesley -= 1 state.olin += 1

If a customer arrives at the Wellesley station and finds no bike
available, `bike_to_olin` updates `wellesley_empty` which counts the
number of unhappy customers.

This function only works if we initialize `wellesley_empty` when we
create the `State` object, like this:

bikeshare = State(olin=10, wellesley=2, olin\_empty=0,
wellesley\_empty=0)

Assuming we update `move_to_wellesley` the same way, we can run the
simulation like this (see Section [3.3](#documentation)):

run\_simulation(bikeshare, 0.4, 0.2, 60)

Then we can check the metrics:

print(bikeshare.olin\_empty, bikeshare.wellesley\_empty)

Because the simulation is stochastic, the results are different each
time it runs.

Before you go on, you might want to read the notebook for this chapter,
`chap03.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

