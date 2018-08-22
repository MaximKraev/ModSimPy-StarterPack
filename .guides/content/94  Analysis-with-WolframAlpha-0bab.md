9.4  Analysis with WolframAlpha {#sec56 .section}
-------------------------------

Until recently, most analysis was done by rubbing graphite on wood
pulp^[3](#note5){#text5}^, a process that is laborious and error-prone.
A useful alternative is symbolic computation. If you have used services
like WolframAlpha, you have used symbolic computation.

[]{#hevea_default257} []{#hevea_default258}

For example, if you go to
[[https://www.wolframalpha.com/]{style="font-family:monospace"}](https://www.wolframalpha.com/)
and type

df(t) / dt = alpha f(t)

WolframAlpha infers that `f(t)` is a function of `t` and `alpha` is a
parameter; it classifies the query as a "first-order linear ordinary
differential equation\", and reports the general solution:

  -------------------------------------------------------------------------------------------------------------------------------------------
  [f]{style="font-style:italic"}([t]{style="font-style:italic"}) = [c]{style="font-style:italic"}~1~ exp(α [t]{style="font-style:italic"}) 
  -------------------------------------------------------------------------------------------------------------------------------------------

If you add a second equation to specify the initial condition:

df(t) / dt = alpha f(t), f(0) = p\_0

WolframAlpha reports the particular solution:

  -------------------------------------------------------------------------------------------------------------------------------------------
  [f]{style="font-style:italic"}([t]{style="font-style:italic"}) = [p]{style="font-style:italic"}~0~ exp(α [t]{style="font-style:italic"}) 
  -------------------------------------------------------------------------------------------------------------------------------------------

WolframAlpha is based on Mathematica, a powerful programming language
designed specifically for symbolic computation.

[]{#hevea_default259}

