12.2  Immunization {#sec78 .section}
------------------

Models like this are useful for testing "what if?\" scenarios. As an
example, we'll consider the effect of immunization.

[]{#hevea_default324} []{#hevea_default325} []{#hevea_default326}

Suppose there is a vaccine that causes a student to become immune to the
Freshman Plague without being infected. How might you modify the model
to capture this effect?

One option is to treat immunization as a short cut from susceptible to
recovered without going through infectious. We can implement this
feature like this:

def add\_immunization(system, fraction): system.init.S -= fraction
system.init.R += fraction

`add_immunization` moves the given fraction of the population from `S`
to `R`. If we assume that 10% of students are vaccinated at the
beginning of the semester, and the vaccine is 100% effective, we can
simulate the effect like this:

system2 = make\_system(beta, gamma) add\_immunization(system2, 0.1)
results2 = run\_simulation(system2, update\_func)

For comparison, we can run the same model without immunization and plot
the results. Figure [12.1](#chap05-fig02) shows `S` as a function of
time, with and without immunization.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy015.png)
> :::
>
> ::: {.caption}
>   ------------------------------------------------------------------
>   Figure 12.1: Time series for `S`, with and without immunization.
>   ------------------------------------------------------------------
> :::
>
> []{#chap05-fig02}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Without immunization, almost 47% of the population gets infected at some
point. With 10% immunization, only 31% gets infected. That's pretty
good.

Now let's see what happens if we administer more vaccines. This
following function sweeps a range of immunization rates:

[]{#hevea_default327}

def sweep\_immunity(immunize\_array): sweep = SweepSeries()

for fraction in immunize\_array: sir = make\_system(beta, gamma)
add\_immunization(sir, fraction) results = run\_simulation(sir,
update\_func) sweep\[fraction\] = calc\_total\_infected(results, sir)

return sweep

The parameter of `sweep_immunity` is an array of immunization rates. The
result is a `SweepSeries` object that maps from each immunization rate
to the resulting fraction of students ever infected.

[]{#hevea_default328} []{#hevea_default329}

Figure [12.2](#chap05-fig03) shows a plot of the `SweepSeries`. Notice
that the x-axis is the immunization rate, not time.

As the immunization rate increases, the number of infections drops
steeply. If 40% of the students are immunized, fewer than 4% get sick.
That's because immunization has two effects: it protects the people who
get immunized (of course) but it also protects the rest of the
population.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy016.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------------------------
>   Figure 12.2: Fraction of the population infected as a function of immunization rate.
>   --------------------------------------------------------------------------------------
> :::
>
> []{#chap05-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Reducing the number of "susceptibles\" and increasing the number of
"resistants\" makes it harder for the disease to spread, because some
fraction of contacts are wasted on people who cannot be infected. This
phenomenon is called [herd immunity]{style="font-weight:bold"}, and it
is an important element of public health (see
[[https://modsimpy.com/herd]{style="font-family:monospace"}](https://modsimpy.com/herd)).

[]{#hevea_default330}

The steepness of the curve in Figure [12.2](#chap05-fig03) is a blessing
and a curse. It's a blessing because it means we don't have to immunize
everyone, and vaccines can protect the "herd\" even if they are not 100%
effective.

But it's a curse because a small decrease in immunization can cause a
big increase in infections. In this example, if we drop from 80%
immunization to 60%, that might not be too bad. But if we drop from 40%
to 20%, that would trigger a major outbreak, affecting more than 15% of
the population. For a serious disease like measles, just to name one,
that would be a public health catastrophe.

[]{#hevea_default331}

One use of models like this is to demonstrate phenomena like herd
immunity and to predict the effect of interventions like vaccination.
Another use is to evaluate alternatives and guide decision making. We'll
see an example in the next section.

