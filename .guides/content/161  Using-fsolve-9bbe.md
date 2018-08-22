16.1  Using fsolve {#sec96 .section}
------------------

[]{#fsolve}

SciPy provides a method called `fsolve` that finds the roots of
non-linear equations. As a simple example, suppose you want to find the
roots of the polynomial

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [f]{style="font-style:italic"}([x]{style="font-style:italic"}) = ([x]{style="font-style:italic"} − 1)([x]{style="font-style:italic"} − 2)([x]{style="font-style:italic"} − 3) 
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

where [root]{style="font-weight:bold"} means a value of
[x]{style="font-style:italic"} that makes
[f]{style="font-style:italic"}([x]{style="font-style:italic"})=0.
Because of the way I wrote the polynomial, we can see that if
[x]{style="font-style:italic"}=1, the first factor is 0; if
[x]{style="font-style:italic"}=2, the second factor is 0; and if
[x]{style="font-style:italic"}=3, the third factor is 0, so those are
the roots.

[]{#hevea_default392} []{#hevea_default393}

But usually it's not that easy. In that case `fsolve` can help. First,
we have to write a function that evaluates
[f]{style="font-style:italic"}:

def func(x): return (x-1) \* (x-2) \* (x-3)

Now we call `fsolve` like this:

fsolve(func, x0=0)

The first argument is the function whose roots we want. The second
argument, `x0`, is an initial guess about where a root might be.
Generally, the closer the initial guess is to an actual root, the faster
`fsolve` runs. In this case, with the initial guess `x0=0`, the result
is 1.

Often `fsolve` finds the root that's closest to the initial guess. In
this example, when `x0=1.9`, `fsolve` returns 2, and when `x0=2.9`,
`fsolve` returns 3. But this behavior can be unpredictable; with
`x0=1.5`, `fsolve` returns 3.

So how can we use `fsolve` to estimate `r`?

What we want is the value of `r` that yields a final temperature of 70.
To work with `fsolve`, we need a function that takes `r` as a parameter
and returns the difference between the final temperature and the goal:

def error\_func1(r): system = make\_system(r=r) results =
run\_simulation(system, update) return system.T\_final - 70

I call a function like this an "error function\" because it returns the
difference between what we got and what we wanted, that is, the error.
When we find the right value of `r`, this error will be 0.

[]{#hevea_default394} []{#hevea_default395}

We can test `error_func1` like this, using our initial guess for `r`:

error\_func1(r=0.01)

The result is an error of 2.3, because the final temperature with this
value of `r` is too high.

Now we can call `fsolve` like this:

solution = fsolve(error\_func1, 0.01) r\_coffee = solution\[0\]

The return value from `fsolve` is an array with a single element, which
is the root `fsolve` found. In this example, `r_coffee` turns out to be
about `0.012`, in units of .

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy023.png)
> :::
>
> ::: {.caption}
>   ------------------------------------------------------------
>   Figure 16.1: Temperature of the coffee and milk over time.
>   ------------------------------------------------------------
> :::
>
> []{#chap07-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

As one of the exercises for this chapter, you will use the same process
to estimate `r_milk`.

With the correct values of `r_coffee` and `r_milk`, the simulation
results should look like Figure [16.1](#chap07-fig01), which shows the
temperature of the coffee and milk over time.

