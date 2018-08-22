9.2  Differential equations {#sec54 .section}
---------------------------

[]{#diffeq}

Starting again with the constant growth model

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ + [c]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

If we define Δ [x]{style="font-style:italic"} to be the change in
[x]{style="font-style:italic"} from one time step to the next, we can
write:

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Δ [x]{style="font-style:italic"} = [x]{style="font-style:italic"}~[n]{style="font-style:italic"}+1~ − [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ = [c]{style="font-style:italic"} 
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

If we define Δ [t]{style="font-style:italic"} to be the time step, which
is one year in the example, we can write the rate of change per unit of
time like this:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [c]{style="font-style:italic"} |
| ---                               |                                   |
|    Δ [x]{style="font-style:italic |                                   |
| "}                                |                                   |
|    Δ [t]{style="font-style:italic |                                   |
| "}                                |                                   |
|   ------------------------------- |                                   |
| ---                               |                                   |
+-----------------------------------+-----------------------------------+

This model is [discrete]{style="font-weight:bold"}, which means it is
only defined at integer values of [n]{style="font-style:italic"} and not
in between. But in reality, people are born and die all the time, not
once a year, so a [continuous]{style="font-weight:bold"} model might be
more realistic.

[]{#hevea_default240} []{#hevea_default241} []{#hevea_default242}

We can make this model continuous by writing the rate of change in the
form of a derivative:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = [c]{style="font-style:italic"} |
| --                                |                                   |
|    [dx]{style="font-style:italic" |                                   |
| }                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

This way of representing the model is a [differential
equation]{style="font-weight:bold"}; see
[[https://modsimpy.com/diffeq]{style="font-family:monospace"}](https://modsimpy.com/diffeq).

[]{#hevea_default243}

We can solve this differential equation if we multiply both sides by
[dt]{style="font-style:italic"}:

  ---------------------------------------------------------------------------------------------------
  [dx]{style="font-style:italic"} = [c]{style="font-style:italic"} [dt]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------

And then integrate both sides:

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}([t]{style="font-style:italic"}) = [c]{style="font-style:italic"} [t]{style="font-style:italic"} + [x]{style="font-style:italic"}~0~ 
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------

Similarly, we can write the proportional growth model like this:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = α [x]{style="font-style:italic |
| ---                               | "}                                |
|    Δ [x]{style="font-style:italic |                                   |
| "}                                |                                   |
|    Δ [t]{style="font-style:italic |                                   |
| "}                                |                                   |
|   ------------------------------- |                                   |
| ---                               |                                   |
+-----------------------------------+-----------------------------------+

And as a differential equation like this:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = α [x]{style="font-style:italic |
| --                                | "}                                |
|    [dx]{style="font-style:italic" |                                   |
| }                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

If we multiply both sides by [dt]{style="font-style:italic"} and divide
by [x]{style="font-style:italic"}, we get

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  [dx]{style="font-style:italic"}  |
| -                                 | = α [dt]{style="font-style:italic |
|                  1                | "}                                |
|    [x]{style="font-style:italic"} |                                   |
|   ------------------------------- |                                   |
| -                                 |                                   |
+-----------------------------------+-----------------------------------+

Now we integrate both sides, yielding:

  -------------------------------------------------------------------------------------------------------
  ln[x]{style="font-style:italic"} = α [t]{style="font-style:italic"} + [K]{style="font-style:italic"} 
  -------------------------------------------------------------------------------------------------------

where ln is the natural logarithm and [K]{style="font-style:italic"} is
the constant of integration. Exponentiating both
sides^[1](#note3){#text3}^, we have

  -------------------------------------------------------------------------------------------------------------------
  exp(ln([x]{style="font-style:italic"})) = exp(α [t]{style="font-style:italic"} + [K]{style="font-style:italic"}) 
  -------------------------------------------------------------------------------------------------------------------

which we can rewrite

  -------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"} = exp(α [t]{style="font-style:italic"}) exp([K]{style="font-style:italic"}) 
  -------------------------------------------------------------------------------------------------------------

Since [K]{style="font-style:italic"} is an arbitrary constant,
exp([K]{style="font-style:italic"}) is also an arbitrary constant, so we
can write

  --------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"} = [C]{style="font-style:italic"} exp(α [t]{style="font-style:italic"}) 
  --------------------------------------------------------------------------------------------------------

where [C]{style="font-style:italic"} =
exp([K]{style="font-style:italic"}). There are many solutions to this
differential equation, with different values of
[C]{style="font-style:italic"}. The particular solution we want is the
one that has the value [x]{style="font-style:italic"}~0~ when
[t]{style="font-style:italic"}=0.

When [t]{style="font-style:italic"}=0,
[x]{style="font-style:italic"}([t]{style="font-style:italic"}) =
[C]{style="font-style:italic"}, so [C]{style="font-style:italic"} =
[x]{style="font-style:italic"}~0~ and the solution we want is

  -------------------------------------------------------------------------------------------------------------------------------------------
  [x]{style="font-style:italic"}([t]{style="font-style:italic"}) = [x]{style="font-style:italic"}~0~ exp(α [t]{style="font-style:italic"}) 
  -------------------------------------------------------------------------------------------------------------------------------------------

If you would like to see this derivation done more carefully, you might
like this video:
[[https://modsimpy.com/khan1]{style="font-family:monospace"}](https://modsimpy.com/khan1).

[]{#hevea_default244} []{#hevea_default245} []{#hevea_default246}
[]{#hevea_default247}

