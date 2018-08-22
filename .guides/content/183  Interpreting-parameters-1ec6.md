18.3  Interpreting parameters {#sec110 .section}
-----------------------------

To see the results, we can pass `best_params` to `make_system` and then
run the simulation:

system = make\_system(best\_params, data) results, details =
run\_ode\_solver(system, slope\_func, t\_eval=data.index)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy027.png)
> :::
>
> ::: {.caption}
>   -----------------------------------------------------------------------------------------
>   Figure 18.1: Simulation of the glucose minimal model with parameters that minimize MSE.
>   -----------------------------------------------------------------------------------------
> :::
>
> []{#chap08-fig04}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [18.1](#chap08-fig04) shows the results. The simulation matches
the measurements well except during the first few minutes after the
injection.

But we don't expect the model to do well in this regime.

The problem is that the model is
[non-spatial]{style="font-weight:bold"}; that is, it does not take into
account different concentrations in different parts of the body.
Instead, it assumes that the concentrations of glucose and insulin in
blood, and insulin in tissue fluid, are the same throughout the body.
This way of representing the body is known among experts as the "bag of
blood\" model.

[]{#hevea_default460} []{#hevea_default461}

Immediately after injection, it takes time for the injected glucose to
circulate. During that time, we don't expect a non-spatial model to be
accurate. For this reason, we should not take the estimated value of
`G0` too seriously; it is useful for fitting the model, but not meant to
correspond to a physical, measurable quantity.

On the other hand, the other parameters are meaningful; in fact, they
are the reason the model is useful. Using the best-fit parameters, we
can estimate two quantities of interest:

[]{#hevea_default462} []{#hevea_default463}

-   "Glucose effectiveness\", [E]{style="font-style:italic"}, which is
    the tendency of elevated glucose to cause depletion of glucose.
-   "Insulin sensitivity\", [S]{style="font-style:italic"}, which is the
    ability of elevated blood insulin to enhance glucose effectiveness.

Glucose effectiveness is defined as the change in
[dG]{style="font-style:italic"}/[dt]{style="font-style:italic"} as we
vary [G]{style="font-style:italic"}:

+-----------------------+-----------------------+-----------------------+
| [E]{style="font-style |   ------------------- |                       |
| :italic"} ≡ −         | ---------------       |                       |
|                       |                  δ Ġ  |                       |
|                       |    δ [G]{style="font- |                       |
|                       | style:italic"}        |                       |
|                       |   ------------------- |                       |
|                       | ---------------       |                       |
+-----------------------+-----------------------+-----------------------+

where Ġ is shorthand for
[dG]{style="font-style:italic"}/[dt]{style="font-style:italic"}. Taking
the derivative of
[dG]{style="font-style:italic"}/[dt]{style="font-style:italic"} with
respect to [G]{style="font-style:italic"}, we get

  ------------------------------------------------------------------------------------------------------
  [E]{style="font-style:italic"} = [k]{style="font-style:italic"}~1~ + [X]{style="font-style:italic"} 
  ------------------------------------------------------------------------------------------------------

The [glucose effectiveness index]{style="font-weight:bold"},
[S]{style="font-style:italic"}~[G]{style="font-style:italic"}~, is the
value of [E]{style="font-style:italic"} when blood insulin is near its
basal level,
[I]{style="font-style:italic"}~[b]{style="font-style:italic"}~. In that
case, [X]{style="font-style:italic"} approaches 0 and
[E]{style="font-style:italic"} approaches
[k]{style="font-style:italic"}~1~. So we can use the best-fit value of
[k]{style="font-style:italic"}~1~ as an estimate of
[S]{style="font-style:italic"}~[G]{style="font-style:italic"}~.

[]{#hevea_default464}

Insulin sensitivity is defined as the change in
[E]{style="font-style:italic"} as we vary
[I]{style="font-style:italic"}:

+-----------------------+-----------------------+-----------------------+
| [S]{style="font-style |   ------------------- |                       |
| :italic"} ≡ −         | ---------------       |                       |
|                       |    δ [E]{style="font- |                       |
|                       | style:italic"}        |                       |
|                       |    δ [I]{style="font- |                       |
|                       | style:italic"}        |                       |
|                       |   ------------------- |                       |
|                       | ---------------       |                       |
+-----------------------+-----------------------+-----------------------+

The [insulin sensitivity index]{style="font-weight:bold"},
[S]{style="font-style:italic"}~[I]{style="font-style:italic"}~, is the
value of [S]{style="font-style:italic"} when
[E]{style="font-style:italic"} and [I]{style="font-style:italic"} are at
steady state:

+-----------------------+-----------------------+-----------------------+
| [S]{style="font-style |   ------------------- |                       |
| :italic"}~[I]{style=" | --------------------- |                       |
| font-style:italic"}~  | --------------------- |                       |
| ≡                     | ------                |                       |
|                       |    δ [E]{style="font- |                       |
|                       | style:italic"}~[SS]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~                 |                       |
|                       |    δ [I]{style="font- |                       |
|                       | style:italic"}~[SS]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~                 |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ------                |                       |
+-----------------------+-----------------------+-----------------------+

[E]{style="font-style:italic"} and [I]{style="font-style:italic"} are at
steady state when
[dG]{style="font-style:italic"}/[dt]{style="font-style:italic"} and
[dX]{style="font-style:italic"}/[dt]{style="font-style:italic"} are 0,
but we don't actually have to solve those equations to find
[S]{style="font-style:italic"}~[I]{style="font-style:italic"}~. If we
set [dX]{style="font-style:italic"}/[dt]{style="font-style:italic"} = 0
and solve for [X]{style="font-style:italic"}, we find the relation:

+-----------------------+-----------------------+-----------------------+
| [X]{style="font-style |   ------------------- |  [I]{style="font-styl |
| :italic"}~[SS]{style= | ----------------      | e:italic"}~[SS]{style |
| "font-style:italic"}~ |    [k]{style="font-st | ="font-style:italic"} |
|  =                    | yle:italic"}~3~       | ~                     |
|                       |    [k]{style="font-st |                       |
|                       | yle:italic"}~2~       |                       |
|                       |   ------------------- |                       |
|                       | ----------------      |                       |
+-----------------------+-----------------------+-----------------------+

And since [E]{style="font-style:italic"} =
[k]{style="font-style:italic"}~1~ + [X]{style="font-style:italic"}, we
have:

+-------------+-------------+-------------+-------------+-------------+
| [S]{style=" |   --------- |  =          |   --------- |             |
| font-style: | ----------- |             | ----------- |             |
| italic"}~[I | ----------- |             | ----------- |             |
| ]{style="fo | ----------- |             | ----------- |             |
| nt-style:it | ----------- |             | ----------- |             |
| alic"}~ =   | ----------- |             | ----------- |             |
|             | ---         |             | ---         |             |
|             |    δ [E]{st |             |    δ [X]{st |             |
|             | yle="font-s |             | yle="font-s |             |
|             | tyle:italic |             | tyle:italic |             |
|             | "}~[SS]{sty |             | "}~[SS]{sty |             |
|             | le="font-st |             | le="font-st |             |
|             | yle:italic" |             | yle:italic" |             |
|             | }~          |             | }~          |             |
|             |    δ [I]{st |             |    δ [I]{st |             |
|             | yle="font-s |             | yle="font-s |             |
|             | tyle:italic |             | tyle:italic |             |
|             | "}~[SS]{sty |             | "}~[SS]{sty |             |
|             | le="font-st |             | le="font-st |             |
|             | yle:italic" |             | yle:italic" |             |
|             | }~          |             | }~          |             |
|             |   --------- |             |   --------- |             |
|             | ----------- |             | ----------- |             |
|             | ----------- |             | ----------- |             |
|             | ----------- |             | ----------- |             |
|             | ----------- |             | ----------- |             |
|             | ----------- |             | ----------- |             |
|             | ---         |             | ---         |             |
+-------------+-------------+-------------+-------------+-------------+

Taking the derivative of
[X]{style="font-style:italic"}~[SS]{style="font-style:italic"}~ with
respect to
[I]{style="font-style:italic"}~[SS]{style="font-style:italic"}~, we
have:

  -----------------------------------------------------------------------------------------------------------------------------------------
  [S]{style="font-style:italic"}~[I]{style="font-style:italic"}~ = [k]{style="font-style:italic"}~3~ / [k]{style="font-style:italic"}~2~ 
  -----------------------------------------------------------------------------------------------------------------------------------------

So if we find parameters that make the model fit the data, we can use
[k]{style="font-style:italic"}~3~ / [k]{style="font-style:italic"}~2~ as
an estimate of
[S]{style="font-style:italic"}~[I]{style="font-style:italic"}~.

For the example data, the estimated values of
[S]{style="font-style:italic"}~[G]{style="font-style:italic"}~ and
[S]{style="font-style:italic"}~[I]{style="font-style:italic"}~ are 0.029
and for 8.9 × 10^−4^. According to Pacini and Bergman, these values are
within the normal range.

Before you go on, you might want to read the notebook for this chapter,
`chap18.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

