14.3  Analysis and simulation {#sec88 .section}
-----------------------------

Let's compare this analytic result to the results from simulation. I'll
create an array of values for [s]{style="font-style:italic"}~∞~
[]{#hevea_default358}

s\_inf\_array = linspace(0.0001, 0.9999, 31)

And compute the corresponding values of [c]{style="font-style:italic"}:

c\_array = log(s\_inf\_array) / (s\_inf\_array - 1)

To get the total infected, we compute the difference between
[s]{style="font-style:italic"}(0) and [s]{style="font-style:italic"}(∞),
then store the results in a `Series`: []{#hevea_default359}
[]{#hevea_default360}

frac\_infected = 1 - s\_inf\_array frac\_infected\_series =
Series(frac\_infected, index=c\_array)

Recall from Section [10.2](#dataframe) that a `Series` object contains
an index and a corresponding sequence of values. In this case, the index
is `c_array` and the values are from `frac_infected`.

Now we can plot the results:

plot(frac\_infected\_series)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy022.png)
> :::
>
> ::: {.caption}
>   ---------------------------------------------------------------------------------------------------------------------
>   Figure 14.2: Total fraction infected as a function of contact number, showing results from simulation and analysis.
>   ---------------------------------------------------------------------------------------------------------------------
> :::
>
> []{#chap06-fig04}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [14.2](#chap06-fig04) compares the analytic results from this
section with the simulation results from Section [14.1](#nondim). Over
most of the range they are consistent with each other, with one
discrepancy: when the contact number is less than 1, analysis indicates
there should be no infections; but in the simulations a small part of
the population is affected even when [c]{style="font-style:italic"}\<1.
[]{#hevea_default361}

The reason for the discrepancy is that the simulation divides time into
a discrete series of days, whereas the analysis treats time as a
continuous quantity. In other words, the two methods are actually based
on different models. So which model is better?

Probably neither. When the contact number is small, the early progress
of the epidemic depends on details of the scenario. If we are lucky, the
original infected person, "patient zero\", infects no one and there is
no epidemic. If we are unlucky, patient zero might have a large number
of close friends, or might work in the dining hall (and fail to observe
safe food handling procedures). []{#hevea_default362}

For contact numbers near or less than 1, we might need a more detailed
model. But for higher contact numbers the SIR model might be good
enough.

Figure [14.2](#chap06-fig04) shows that if we know the contact number,
we can compute the fraction infected. But we can also read the figure
the other way; that is, at the end of an epidemic, if we can estimate
the fraction of the population that was ever infected, we can use it to
estimate the contact number.

Well, at least in theory. In practice, it might not work very well,
because of the shape of the curve. When the contact number is near 2,
the curve is quite steep, which means that small changes in
[c]{style="font-style:italic"} yield big changes in the number of
infections. If we observe that the total fraction infected is anywhere
from 20% to 80%, we would conclude that [c]{style="font-style:italic"}
is near 2.

On the other hand, for larger contact numbers, nearly the entire
population is infected, so the curve is quite flat. In that case we
would not be able to estimate [c]{style="font-style:italic"} precisely,
because any value greater than 3 would yield effectively the same
results. Fortunately, this is unlikely to happen in the real world; very
few epidemics affect anything like 90% of the population.

So the SIR model has limitations; nevertheless, it provides insight into
the behavior of infectious disease, especially the phenomenon of herd
resistance. As we saw in the previous chapter, if we know the parameters
of the model, we can use it to evaluate possible interventions. And as
we saw in this chapter, we might be able to use data from earlier
outbreaks to estimate the parameters.

Before you go on, you might want to read the notebook for this chapter,
`chap14.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

