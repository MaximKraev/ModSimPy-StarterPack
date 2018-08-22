11.6  Running the simulation {#sec73 .section}
----------------------------

Now we can simulate the model over a sequence of time steps:

[]{#hevea_default304}

def run\_simulation(system, update\_func): state = system.init

for t in linrange(system.t0, system.t\_end): state = update\_func(state,
t, system)

return state

The parameters of `run_simulation` are the `System` object and the
update function. The `System` object contains the parameters, initial
conditions, and values of `t0` and `t_end`.

[]{#hevea_default305}

The outline of this function should look familiar; it is similar to the
function we used for the population model in
Section [6.1](#nowwithsystem).

We can call `run_simulation` like this:

system = make\_system(beta, gamma) final\_state =
run\_simulation(system, update\_func)

The result is the final state of the system:

 

[value]{style="font-family:sans-serif;font-weight:bold"}

[S]{style="font-family:sans-serif;font-weight:bold"}

0.520819

[I]{style="font-family:sans-serif;font-weight:bold"}

0.000676

[R]{style="font-family:sans-serif;font-weight:bold"}

0.478505

This result indicates that after 14 weeks (98 days), about 52% of the
population is still susceptible, which means they were never infected,
less than 1% are actively infected, and 48% have recovered, which means
they were infected at some point.

