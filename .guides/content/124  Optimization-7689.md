12.4  Optimization {#sec80 .section}
------------------

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy018.png)
> :::
>
> ::: {.caption}
>   ----------------------------------------------------------------------------------------
>   Figure 12.4: Fraction of the population infected as a function of the number of doses.
>   ----------------------------------------------------------------------------------------
> :::
>
> []{#chap05-fig06}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Let's put it all together. With a fixed budget of \$1200, we have to
decide how many doses of vaccine to buy and how much to spend on the
hand-washing campaign.

[]{#hevea_default333}

Here are the parameters:

num\_students = 90 budget = 1200 price\_per\_dose = 100 max\_doses =
int(budget / price\_per\_dose)

The fraction `budget/price_per_dose` might not be an integer. `int` is a
built-in function that converts numbers to integers, rounding down.

We'll sweep the range of possible doses:

dose\_array = linrange(max\_doses, endpoint=True)

In this example we call `linrange` with only one argument; it returns a
NumPy array with the integers from 0 to `max_doses`. With the argument
`endpoint=True`, the result includes both endpoints.

[]{#hevea_default334} []{#hevea_default335} []{#hevea_default336}

Then we run the simulation for each element of `dose_array`:

def sweep\_doses(dose\_array): sweep = SweepSeries()

for doses in dose\_array: fraction = doses / num\_students spending =
budget - doses \* price\_per\_dose

sir = make\_system(beta, gamma) add\_immunization(sir, fraction)
add\_hand\_washing(sir, spending)

run\_simulation(sir, update\_func) sweep\[doses\] =
calc\_total\_infected(sir)

return sweep

For each number of doses, we compute the fraction of students we can
immunize, `fraction` and the remaining budget we can spend on the
campaign, `spending`. Then we run the simulation with those quantities
and store the number of infections.

Figure [12.4](#chap05-fig06) shows the result. If we buy no doses of
vaccine and spend the entire budget on the campaign, the fraction
infected is around 19%. At 4 doses, we have \$800 left for the campaign,
and this is the optimal point that minimizes the number of students who
get sick.

As we increase the number of doses, we have to cut campaign spending,
which turns out to make things worse. But interestingly, when we get
above 10 doses, the effect of herd immunity starts to kick in, and the
number of sick students goes down again.

[]{#hevea_default337}

Before you go on, you might want to read the notebook for this chapter,
`chap12.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

