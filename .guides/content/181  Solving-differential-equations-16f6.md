18.1  Solving differential equations {#sec108 .section}
------------------------------------

[]{#slopefunc}

So far we have solved differential equations by rewriting them as
difference equations. In the current example, the differential equations
are:

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  = −[k]{s | ⎡\        | [G]{style | ⎤\        | − [X]{sty |
| --------- | tyle="fon | ⎣         | ="font-st | ⎦         | le="font- |
| --------- | t-style:i |           | yle:itali |           | style:ita |
| --------  | talic"}~1 |           | c"}([t]{s |           | lic"}([t] |
|    [dG]{s | ~         |           | tyle="fon |           | {style="f |
| tyle="fon |           |           | t-style:i |           | ont-style |
| t-style:i |           |           | talic"})  |           | :italic"} |
| talic"}   |           |           | − [G]{sty |           | ) [G]{sty |
|    [dt]{s |           |           | le="font- |           | le="font- |
| tyle="fon |           |           | style:ita |           | style:ita |
| t-style:i |           |           | lic"}~[b] |           | lic"}([t] |
| talic"}   |           |           | {style="f |           | {style="f |
|   ------- |           |           | ont-style |           | ont-style |
| --------- |           |           | :italic"} |           | :italic"} |
| --------- |           |           | ~         |           | )         |
| --------  |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  = [k]{st | ⎡\        | [I]{style | ⎤\        | − [k]{sty |
| --------- | yle="font | ⎣         | ="font-st | ⎦         | le="font- |
| --------- | -style:it |           | yle:itali |           | style:ita |
| --------  | alic"}~3~ |           | c"}([t]{s |           | lic"}~2~  |
|    [dX]{s |           |           | tyle="fon |           | [X]{style |
| tyle="fon |           |           | t-style:i |           | ="font-st |
| t-style:i |           |           | talic"})  |           | yle:itali |
| talic"}   |           |           | − [I]{sty |           | c"}([t]{s |
|    [dt]{s |           |           | le="font- |           | tyle="fon |
| tyle="fon |           |           | style:ita |           | t-style:i |
| t-style:i |           |           | lic"}~[b] |           | talic"})  |
| talic"}   |           |           | {style="f |           |           |
|   ------- |           |           | ont-style |           |           |
| --------- |           |           | :italic"} |           |           |
| --------- |           |           | ~         |           |           |
| --------  |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

If we multiply both sides by [dt]{style="font-style:italic"}, we have:

  ------------------------------------ ---- ------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- -----------------------------------
  [dG]{style="font-style:italic"} =    ⎡\   −[k]{style="font-style:italic"}~1~    ⎡\   [G]{style="font-style:italic"}([t]{style="font-style:italic"}) − [G]{style="font-style:italic"}~[b]{style="font-style:italic"}~    ⎤\   − [X]{style="font-style:italic"}([t]{style="font-style:italic"}) [G]{style="font-style:italic"}([t]{style="font-style:italic"})    ⎤\   [dt]{style="font-style:italic"}  
                                       ⎣                                          ⎣                                                                                                                                       ⎦                                                                                                                                       ⎦    

  ------------------------------------ ---- ------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- -----------------------------------

  ------------------------------------ ---- ------------------------------------ ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- ----------------------------------------------------------------------------------------------------- ---- ----------------------------------
  [dX]{style="font-style:italic"} =    ⎡\   [k]{style="font-style:italic"}~3~    ⎡\   [I]{style="font-style:italic"}([t]{style="font-style:italic"}) − [I]{style="font-style:italic"}~[b]{style="font-style:italic"}~    ⎤\   − [k]{style="font-style:italic"}~2~ [X]{style="font-style:italic"}([t]{style="font-style:italic"})    ⎤\   [dt]{style="font-style:italic"} 
                                       ⎣                                         ⎣                                                                                                                                       ⎦                                                                                                          ⎦    

  ------------------------------------ ---- ------------------------------------ ---- ---------------------------------------------------------------------------------------------------------------------------------- ---- ----------------------------------------------------------------------------------------------------- ---- ----------------------------------

When [dt]{style="font-style:italic"} is very small, or more precisely
[infinitesimal]{style="font-weight:bold"}, this equation is exact. But
in our simulations, [dt]{style="font-style:italic"} is 2, which is small
but not infinitesimal. In effect, the simulations assume that the
derivatives
[dG]{style="font-style:italic"}/[dt]{style="font-style:italic"} and
[dX]{style="font-style:italic"}/[dt]{style="font-style:italic"} are
constant during each 2 time step.

[]{#hevea_default439}

This method, evaluating derivatives at discrete time steps and assuming
that they are constant in between, is called [Euler's
method]{style="font-weight:bold"} (see
[[https://modsimpy.com/euler]{style="font-family:monospace"}](https://modsimpy.com/euler)).

[]{#hevea_default440}

Euler's method is good enough for some simple problems, but there are
many better ways to solve differential equations. Rather than implement
these methods ourselves, we will use functions from SciPy. The `modsim`
library provides a function called `run_ode_solver`, which uses the
SciPy function `solve_ivp`.

[]{#hevea_default441}

The "ODE\" in `run_ode_solver` stands for "ordinary differential
equation integrator\". The equations we are solving are "ordinary"
because all the derivatives are with respect to the same variable; in
other words, there are no partial derivatives.

The "IVP\" in `solve_ivp` stands for "initial value problem\", which is
the term for problems where you start with an initial value and figure
out how the system changes over time, or sometimes space or another
quantity.

[]{#hevea_default442} []{#hevea_default443}

`solve_ivp` can use one of several ODE solvers; by default it uses a
[Runge-Kutta-Fehlberg method]{style="font-weight:bold"}. These methods
are [adaptive]{style="font-weight:bold"}; that is, they choose the step
size automatically, using small steps when necessary to limit errors,
and large steps when possible to be efficient.

To use `run_ode_solver`, we have to provide a "slope function\", like
this:

[]{#hevea_default444} []{#hevea_default445} []{#hevea_default446}

def slope\_func(state, t, system): G, X = state unpack(system)

dGdt = -k1 \* (G - Gb) - X\*G dXdt = k3 \* (I(t) - Ib) - k2 \* X

return dGdt, dXdt

`slope_func` is similar to `update_func`; in fact, it takes the same
parameters in the same order. But `slope_func` is simpler, because all
we have to do is compute the derivatives, that is, the slopes. We don't
have to do the updates; `run_ode_solver` does them for us.

[]{#hevea_default447}

Now we can call `run_ode_solver` like this:

results, details = run\_ode\_solver(system, slope\_func,
t\_eval=data.index)

`run_ode_solver` is similar to `run_simulation`: it takes a `System`
object and a slope function as parameters, and returns a `TimeFrame` as
a result. `results` has one row for each time step and one column for
each state variable. In this example, the rows are the values from
`data.index`; the columns are the state variables, `G` and `X`.

[]{#hevea_default448}

`run_ode_solver` also returns `details`, which is a `ModSimSeries` with
information about how the solver ran, including a success code, a
diagnostic message, and other information. A `ModSimSeries` is like a
`System` or `State` object; it contains a set of variables and their
values.

[]{#hevea_default449}

`run_ode_solver` takes an optional argument, `t_eval`, which indicates
where we want to evaluate the solution. In this case we want the results
to have the same time steps as the data, so we can compare them easily.

The results are similar to what we saw in Figure [17.2](#chap08-fig03).
The biggest relative difference is less than 1%.

