6.4  Combining birth and death {#sec44 .section}
------------------------------

While we are at it, we can also simplify the code by combining births
and deaths to compute the net growth rate. Instead of two parameters,
`birth_rate` and `death_rate`, we can write the update function in terms
of a single parameter that represents the difference:

system.alpha = system.birth\_rate - system.death\_rate

The name of this parameter, `alpha`, is the conventional name for a
proportional growth rate.

Here's the modified version of `update_func1`:

def update\_func2(pop, t, system): net\_growth = system.alpha \* pop
return pop + net\_growth

And here's how we run it:

results = run\_simulation(system, update\_func2)

Again, the result is the same as Figure [6.1](#chap03-fig03).

Before you go on, you might want to read the notebook for this chapter,
`chap06.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

