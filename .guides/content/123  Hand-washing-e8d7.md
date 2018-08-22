12.3  Hand washing {#sec79 .section}
------------------

Suppose you are the Dean of Student Life, and you have a budget of just
\$1200 to combat the Freshman Plague. You have two options for spending
this money:

1.  You can pay for vaccinations, at a rate of \$100 per dose.
2.  You can spend money on a campaign to remind students to wash hands
    frequently.

We have already seen how we can model the effect of vaccination. Now
let's think about the hand-washing campaign. We'll have to answer two
questions:

1.  How should we incorporate the effect of hand washing in the model?
2.  How should we quantify the effect of the money we spend on a
    hand-washing campaign?

For the sake of simplicity, let's assume that we have data from a
similar campaign at another school showing that a well-funded campaign
can change student behavior enough to reduce the infection rate by 20%.

In terms of the model, hand washing has the effect of reducing `beta`.
That's not the only way we could incorporate the effect, but it seems
reasonable and it's easy to implement.

Now we have to model the relationship between the money we spend and the
effectiveness of the campaign. Again, let's suppose we have data from
another school that suggests:

-   If we spend \$500 on posters, materials, and staff time, we can
    change student behavior in a way that decreases the effective value
    of `beta` by 10%.
-   If we spend \$1000, the total decrease in `beta` is almost 20%.
-   Above \$1000, additional spending has little additional benefit.

In the notebook for this chapter you will see how I used a logistic
curve to fit this data. The result is the following function, which
takes spending as a parameter and returns `factor`, which is the factor
by which `beta` is reduced:

[]{#hevea_default332}

def compute\_factor(spending): return logistic(spending, M=500, K=0.2,
B=0.01)

I use `compute_factor` to write `add_hand_washing`, which takes a
`System` object and a budget, and modifies `system.beta` to model the
effect of hand washing:

def add\_hand\_washing(system, spending): factor =
compute\_factor(spending) system.beta \*= (1 - factor)

Now we can sweep a range of values for `spending` and use the simulation
to compute the effect:

def sweep\_hand\_washing(spending\_array): sweep = SweepSeries()

for spending in spending\_array: sir = make\_system(beta, gamma)
add\_hand\_washing(sir, spending) results, run\_simulation(sir,
update\_func) sweep\[spending\] = calc\_total\_infected(results, sir)

return sweep

Here's how we run it:

spending\_array = linspace(0, 1200, 20) infected\_sweep =
sweep\_hand\_washing(spending\_array)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy017.png)
> :::
>
> ::: {.caption}
>   ---------------------------------------------------------------------------------------------------
>   Figure 12.3: Fraction of the population infected as a function of hand-washing campaign spending.
>   ---------------------------------------------------------------------------------------------------
> :::
>
> []{#chap05-fig05}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [12.3](#chap05-fig05) shows the result. Below \$200, the campaign
has little effect. At \$800 it has a substantial effect, reducing total
infections from 46% to 20%. Above \$800, the additional benefit is
small.

