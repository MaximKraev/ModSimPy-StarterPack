19.2  Under the hood {#sec113 .section}
--------------------

`unpack` is a function in the `modsim` library that copies the variables
and values from a `System` object into a special Python data structure
that stores global variables. To be honest, it is a bit of a hack; that
is, it may be expedient, but it might not be an example of software
engineering you should emulate.

`fsolve` is based on a Scipy function that is also called `fsolve`; you
can read more about it at
[[https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.fsolve.html]{style="font-family:monospace"}](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.fsolve.html).
It uses a numerical method called Powell's method, and you can read more
about that at
[[https://en.wikipedia.org/wiki/Powell\'s\_method]{style="font-family:monospace"}](https://en.wikipedia.org/wiki/Powell's_method).

[]{#hevea_default466}

`run_ode_solver` uses the SciPy function `solve_ivp`, which you can read
about at
[[https://docs.scipy.org/doc/scipy/reference/generated/scipy.integrate.solve\_ivp.html]{style="font-family:monospace"}](https://docs.scipy.org/doc/scipy/reference/generated/scipy.integrate.solve_ivp.html).
By default it uses an algorithm called RK45, or RKF45, which you can
read about at
[[https://modsimpy.com/runge]{style="font-family:monospace"}](https://modsimpy.com/runge)).

`fit_leastsq` is based on the SciPy function `leastsq`; you can read
about it at
[[https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.leastsq.html]{style="font-family:monospace"}](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.leastsq.html).
By default it uses a version of the Levenberg-Marquardt method, which
you can read about at
[[https://en.wikipedia.org/wiki/Levenberg-Marquardt\_algorithm]{style="font-family:monospace"}](https://en.wikipedia.org/wiki/Levenberg-Marquardt_algorithm).

These SciPy functions don't work with the units provided by Pint, so the
`modsim` library turns off unit-checking before calling them. This
mechanism is a bit of a hack, so you might get some unexpected behavior.
If so, I suggest you make a modest effort to fix them problem, but don't
spend too much time on it.

Carrying units through computations like this is not as common as it
should be, so the tools are not as polished as they could be. I think it
is worth trying, because you can catch a lot of errors by checking
units; but if it gets to be too much trouble, you can always remove the
units from the code. In that case, you should add comments that document
the units for all variables!

The rest of this chapter presents case studies you can use to practice
what you have learned so far.

