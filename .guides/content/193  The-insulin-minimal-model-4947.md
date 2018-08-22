19.3  The insulin minimal model {#sec114 .section}
-------------------------------

Along with the glucose minimal model in Chapter [17](#chap17), Berman et
al. developed an insulin minimal model, in which the concentration of
insulin, [I]{style="font-style:italic"}, is governed by this
differential equation:

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  = −[k]{s | ⎡\        | [G]{style | ⎤\        | [t]{style |
| --------- | tyle="fon | ⎣         | ="font-st | ⎦         | ="font-st |
| --------- | t-style:i |           | yle:itali |           | yle:itali |
| --------  | talic"} [ |           | c"}([t]{s |           | c"}       |
|    [dI]{s | I]{style= |           | tyle="fon |           |           |
| tyle="fon | "font-sty |           | t-style:i |           |           |
| t-style:i | le:italic |           | talic"})  |           |           |
| talic"}   | "}([t]{st |           | − [G]{sty |           |           |
|    [dt]{s | yle="font |           | le="font- |           |           |
| tyle="fon | -style:it |           | style:ita |           |           |
| t-style:i | alic"}) + |           | lic"}~[T] |           |           |
| talic"}   |  γ        |           | {style="f |           |           |
|   ------- |           |           | ont-style |           |           |
| --------- |           |           | :italic"} |           |           |
| --------- |           |           | ~         |           |           |
| --------  |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

where

-   [k]{style="font-style:italic"} is a parameter that controls the rate
    of insulin disappearance independent of blood glucose.
-   [G]{style="font-style:italic"}([t]{style="font-style:italic"}) is
    the measured concentration of blood glucose at time
    [t]{style="font-style:italic"}.
-   [G]{style="font-style:italic"}~[T]{style="font-style:italic"}~ is
    the glucose threshold; when blood glucose is above this level, it
    triggers an increase in blood insulin.
-   γ is a parameter that controls the rate of increase (or decrease) in
    blood insulin when glucose is above (or below)
    [G]{style="font-style:italic"}~[T]{style="font-style:italic"}~.

The initial condition is [I]{style="font-style:italic"}(0) =
[I]{style="font-style:italic"}~0~. As in the glucose minimal model, we
treat the initial condition as a parameter which we'll choose to fit the
data.

[]{#hevea_default467} []{#hevea_default468}

The parameters of this model can be used to estimate, φ~1~ and φ~2~,
which are values that "describe the sensitivity to glucose of the first
and second phase pancreatic responsivity\". They are related to the
parameters as follows:

+-----------------------------------+-----------------------------------+
| φ~1~ =                            |   ------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | ---                               |
|                                   |     [I]{style="font-style:italic" |
|                                   | }~[max]{style="font-style:italic" |
|                                   | }~ − [I]{style="font-style:italic |
|                                   | "}~[b]{style="font-style:italic"} |
|                                   | ~                                 |
|                                   |    [k]{style="font-style:italic"} |
|                                   |  ([G]{style="font-style:italic"}~ |
|                                   | 0~ − [G]{style="font-style:italic |
|                                   | "}~[b]{style="font-style:italic"} |
|                                   | ~)                                |
|                                   |   ------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | --------------------------------- |
|                                   | ---                               |
+-----------------------------------+-----------------------------------+

  -------------------
  φ~2~ = γ × 10^4^ 
  -------------------

where [I]{style="font-style:italic"}~[max]{style="font-style:italic"}~
is the maximum measured insulin level, and
[I]{style="font-style:italic"}~[b]{style="font-style:italic"}~ and
[G]{style="font-style:italic"}~[b]{style="font-style:italic"}~ are the
basal levels of insulin and glucose.

In the repository for this book, you will find a notebook,
`insulin.ipynb`, which contains starter code for this case study. Use it
to implement the insulin model, find the parameters that best fit the
data, and estimate these values.

