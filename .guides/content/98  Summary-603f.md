9.8  Summary {#sec60 .section}
------------

The following tables summarize the results so far:

  -------------- ----------------------------------------------------------------------------------------------------------------------------------------------------
  Growth type    Discrete (difference equation)
  Constant       linear: [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ = [p]{style="font-style:italic"}~0~ + α [n]{style="font-style:italic"}
  Proportional   geometric: [x]{style="font-style:italic"}~[n]{style="font-style:italic"}~ = [p]{style="font-style:italic"}~0~(1+α)^[n]{style="font-style:italic"}^
  -------------- ----------------------------------------------------------------------------------------------------------------------------------------------------

  -------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                 Continuous (differential equation)
  Constant       linear: [x]{style="font-style:italic"}([t]{style="font-style:italic"}) = [p]{style="font-style:italic"}~0~ + α [t]{style="font-style:italic"}
  Proportional   exponential: [x]{style="font-style:italic"}([t]{style="font-style:italic"}) = [p]{style="font-style:italic"}~0~ exp(α [t]{style="font-style:italic"})
  Quadratic      logistic: [x]{style="font-style:italic"}([t]{style="font-style:italic"}) = [K]{style="font-style:italic"} / (1 + [A]{style="font-style:italic"}exp(−[rt]{style="font-style:italic"}))
  -------------- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

What I've been calling the constant growth model is more commonly called
"linear growth\" because the solution is a line. Similarly, what I've
called proportional is commonly called "exponential\", and what I've
called quadratic is commonly called "logistic\". I avoided these terms
until now because they are based on results we had not derived yet.

[]{#hevea_default272} []{#hevea_default273} []{#hevea_default274}

Before you go on, you might want to read the notebook for this chapter,
`chap09sympy.ipynb`. For instructions on downloading and running the
code, see Section [0.4](#code).
