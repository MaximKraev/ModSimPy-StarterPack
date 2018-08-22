11.2  The SIR model {#sec69 .section}
-------------------

The Kermack-McKendrick model is a simple version of an [SIR
model]{style="font-weight:bold"}, so-named because it considers three
categories of people:

-   [S]{style="font-weight:bold"}: People who are "susceptible\", that
    is, capable of contracting the disease if they come into contact
    with someone who is infected.
-   [I]{style="font-weight:bold"}: People who are "infectious\", that
    is, capable of passing along the disease if they come into contact
    with someone susceptible.
-   [R]{style="font-weight:bold"}: People who are "recovered\".

In the basic version of the model, people who have recovered are
considered to be immune to reinfection. That is a reasonable model for
some diseases, but not for others, so it should be on the list of
assumptions to reconsider later.

Let's think about how the number of people in each category changes over
time. Suppose we know that people with the disease are infectious for a
period of 4 days, on average. If 100 people are infectious at a
particular point in time, and we ignore the particular time each one
became infected, we expect about 1 out of 4 to recover on any particular
day.

Putting that a different way, if the time between recoveries is 4 days,
the recovery rate is about 0.25 recoveries per day, which we'll denote
with the Greek letter gamma, γ. If the total number of people in the
population is [N]{style="font-style:italic"}, and the fraction currently
infectious is [i]{style="font-style:italic"}, the total number of
recoveries we expect per day is γ [i N]{style="font-style:italic"}.

[]{#hevea_default284}

Now let's think about the number of new infections. Suppose we know that
each susceptible person comes into contact with 1 person every 3 days,
on average, in a way that would cause them to become infected if the
other person is infected. We'll denote this contact rate with the Greek
letter beta, β.

[]{#hevea_default285}

It's probably not reasonable to assume that we know β ahead of time, but
later we'll see how to estimate it based on data from previous
outbreaks.

If [s]{style="font-style:italic"} is the fraction of the population
that's susceptible, [s N]{style="font-style:italic"} is the number of
susceptible people, β [s N]{style="font-style:italic"} is the number of
contacts per day, and β [s i N]{style="font-style:italic"} is the number
of those contacts where the other person is infectious.

[]{#hevea_default286}

In summary:

-   The number of recoveries we expect per day is γ [i
    N]{style="font-style:italic"}; dividing by
    [N]{style="font-style:italic"} yields the fraction of the population
    that recovers in a day, which is γ [i]{style="font-style:italic"}.
-   The number of new infections we expect per day is β [s i
    N]{style="font-style:italic"}; dividing by
    [N]{style="font-style:italic"} yields the fraction of the population
    that gets infected in a day, which is β [s
    i]{style="font-style:italic"}.

This model assumes that the population is closed; that is, no one
arrives or departs, so the size of the population,
[N]{style="font-style:italic"}, is constant.

