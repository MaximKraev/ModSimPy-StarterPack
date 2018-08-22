9.1  Recurrence relations {#sec53 .section}
-------------------------

The population models in the previous chapter and this one are simple
enough that we didn't really need to run simulations. We could have
solved them mathematically. For example, we wrote the constant growth
model like this:

model\[t+1\] = model\[t\] + annual\_growth

In mathematical notation, we would write the same model like this:

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + [c]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

where [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ is
the population during year [n]{style="font-style:italic"},
[x]{style="font-style:italic"}~0~ is a given initial population, and
[c]{style="font-style:italic"} is constant annual growth. This way of
representing the model is a [recurrence
relation]{style="font-weight:bold"}; see
[[https://modsimpy.com/recur]{style="font-family:monospace"}](https://modsimpy.com/recur).

[]{#hevea_default237}

Sometimes it is possible to solve a recurrence relation by writing an
equation that computes
[x]{style="font-style:italic"}~[n]{style="font-style:italic"}~, for a
given value of [n]{style="font-style:italic"}, directly; that is,
without computing the intervening values from
[x]{style="font-style:italic"}~1~ through
[x]{style="font-style:italic"}~[n]{style="font-style:italic"}−1~.

In the case of constant growth we can see that
[x]{style="font-style:italic"}~1~ = [x]{style="font-style:italic"}~0~ +
[c]{style="font-style:italic"}, and [x]{style="font-style:italic"}~2~ =
[x]{style="font-style:italic"}~1~ + [c]{style="font-style:italic"}.
Combining these, we get [x]{style="font-style:italic"}~2~ =
[x]{style="font-style:italic"}~0~ + 2[c]{style="font-style:italic"},
then [x]{style="font-style:italic"}~3~ =
[x]{style="font-style:italic"}~0~ + 3[c]{style="font-style:italic"}, and
it is not hard to conclude that in general

  ---------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ = [x]{style="font-style:italic"}~0~ + [nc]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------------------------------------------

So if we want to know [x]{style="font-style:italic"}~100~ and we don't
care about the other values, we can compute it with one multiplication
and one addition.

We can also write the proportional model as a recurrence relation:

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + α [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ 
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Or more conventionally as:

  --------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ (1 + α) 
  --------------------------------------------------------------------------------------------------------------------------------------------

Now we can see that [x]{style="font-style:italic"}~1~ =
[x]{style="font-style:italic"}~0~ (1 + α), and
[x]{style="font-style:italic"}~2~ = [x]{style="font-style:italic"}~0~ (1
+ α)^2^, and in general

  ---------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ = [x]{style="font-style:italic"}~0~ (1 + α)^[n]{style="font-style:italic"}^ 
  ---------------------------------------------------------------------------------------------------------------------------------------------

This result is a [geometric progression]{style="font-weight:bold"}; see
[[https://modsimpy.com/geom]{style="font-family:monospace"}](https://modsimpy.com/geom).
When α is positive, the factor 1+α is greater than 1, so the elements of
the sequence grow without bound.

[]{#hevea_default238} []{#hevea_default239}

Finally, we can write the quadratic model like this:

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + α [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + β [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~^2^ 
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

or with the more conventional parameterization like this:

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + [r]{style="font-style:italic"} [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ (1 − [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ / [K]{style="font-style:italic"}) 
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

There is no analytic solution to this equation, but we can approximate
it with a differential equation and solve that, which is what we'll do
in the next section.

