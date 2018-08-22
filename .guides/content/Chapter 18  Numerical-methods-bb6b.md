Chapter 18  Numerical methods {#sec107 .chapter}
=============================

[]{#chap18}

In the previous chapter, we implemented the glucose minimal model using
`run_simulation`, which solves differential equations using discrete
time steps. This method works well enough for many applications, but it
is not very accurate. In this chapter we explore a better option: using
an [ODE solver]{style="font-weight:bold"}.

Then we use a search algorithm to find the model parameters that yield
the best fit for the data.

