19.5  Thermal behavior of a wall {#sec116 .section}
--------------------------------

This case study is based on a paper by Gori,
et al^[2](#note13){#text13}^ that models the thermal behavior of a brick
wall, with the goal of understanding the "performance gap between the
expected energy use of buildings and their measured energy use\".

The following figure shows the scenario and their model of the wall:

\

::: {.center}
![](ModSimPy029.png)
:::

On the interior and exterior surfaces of the wall, they measure
temperature and heat flux over a period of three days. They model the
wall using two thermal masses connected to the surfaces, and to each
other, by thermal resistors.

The primary methodology of the paper is a Bayesian method for inferring
the parameters of the system (two thermal masses and three thermal
resistances).

The primary result is a comparison of two models: the one shown here
with two thermal masses, and a simpler model with only one thermal mass.
They find that the two-mass model is able to reproduce the measured
fluxes substantially better.

For this case study we will implement their model and run it with the
estimated parameters from the paper, and then use `fit_leastsq` to see
if we can find parameters that yield lower errors.

In the repository for this book, you will find a notebook, `wall.ipynb`
with the code and results for this case study.
