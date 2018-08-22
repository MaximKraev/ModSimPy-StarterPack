11.4  Implementation {#sec71 .section}
--------------------

For a given physical system, there are many possible models, and for a
given model, there are many ways to represent it. For example, we can
represent an SIR model as a stock-and-flow diagram, as a set of
differential equations, or as a Python program. The process of
representing a model in these forms is called
[implementation]{style="font-weight:bold"}. In this section, we
implement the SIR model in Python.

[]{#hevea_default292}

I'll represent the initial state of the system using a `State` object
with state variables `S`, `I`, and `R`; they represent the fraction of
the population in each compartment.

[]{#hevea_default293} []{#hevea_default294} []{#hevea_default295}

We can initialize the `State` object with the *number* of people in each
compartment, assuming there is one infected student in a class of 90:

init = State(S=89, I=1, R=0)

And then convert the numbers to fractions by dividing by the total:

init /= sum(init)

For now, let's assume we know the time between contacts and time between
recoveries:

tc = 3 \# time between contacts in days tr = 4 \# recovery time in days

We can use them to compute the parameters of the model:

beta = 1 / tc \# contact rate in per day gamma = 1 / tr \# recovery rate
in per day

Now we need a `System` object to store the parameters and initial
conditions. The following function takes the system parameters as
function parameters and returns a new `System` object:

[]{#hevea_default296}

def make\_system(beta, gamma): init = State(S=89, I=1, R=0) init /=
sum(init)

t0 = 0 t\_end = 7 \* 14

return System(init=init, t0=t0, t\_end=t\_end, beta=beta, gamma=gamma)

The default value for `t_end` is 14 weeks, about the length of a
semester.

