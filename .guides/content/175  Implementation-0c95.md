17.5  Implementation {#sec106 .section}
--------------------

[]{#glucose}

To get started, we'll assume that the parameters of the model are known.
We'll implement the model and use it to generate time series for `G` and
`X`. Then we'll see how to find the parameters that generate the series
that best fits the data.

Taking advantage of estimates from prior work, we'll start with these
values:

params = Params(G0 = 290, k1 = 0.03, k2 = 0.02, k3 = 1e-05)

A `Params` object is similar to a `System` or `State` object; it is
useful for holding a collection of parameters.

[]{#hevea_default431} []{#hevea_default432}

We can pass `params` and `data` to `make_system`:

def make\_system(params, data): G0, k1, k2, k3 = params

Gb = data.glucose\[0\] Ib = data.insulin\[0\]

t\_0 = get\_first\_label(data) t\_end = get\_last\_label(data)

init = State(G=G0, X=0)

return System(G0=G0, k1=k1, k2=k2, k3=k3, init=init, Gb=Gb, Ib=Ib,
t\_0=t\_0, t\_end=t\_end, dt=2)

`make_system` uses the measurements at `t=0` as the basal levels, `Gb`
and `Ib`. It gets `t_0` and `t_end` from the data. And it uses the
parameter `G0` as the initial value for `G`. Then it packs everything
into a `System` object.

Here's the update function:

[]{#hevea_default433} []{#hevea_default434}

def update\_func(state, t, system): G, X = state unpack(system)

dGdt = -k1 \* (G - Gb) - X\*G dXdt = k3 \* (I(t) - Ib) - k2 \* X

G += dGdt \* dt X += dXdt \* dt

return State(G=G, X=X)

As usual, the update function takes a `State` object, a time, and a
`System` object as parameters. The first line `update` uses multiple
assignment to extract the current values of `G` and `X`. The second line
uses `unpack` so we can read the system variables without using the dot
operator.

[]{#hevea_default435}

Computing the derivatives `dGdt` and `dXdt` is straightforward; we just
translate the equations from math notation to Python.

[]{#hevea_default436}

Then, to perform the update, we multiply each derivative by the discrete
time step `dt`, which is 2 in this example. The return value is a
`State` object with the new values of `G` and `X`.

[]{#hevea_default437}

Before running the simulation, it is a good idea to run the update
function with the initial conditions:

update\_func(system.init, system.t\_0, system)

Now we are ready to run the simulation. We'll use this version of
`run_simulation`, which is very similar to previous versions:

[]{#hevea_default438}

def run\_simulation(system, update\_func): unpack(system)

frame = TimeFrame(columns=init.index) frame.loc\[t0\] = init ts =
linrange(t0, t\_end, dt)

for t in ts: frame.row\[t+dt\] = update\_func(frame.row\[t\], t, system)

return frame

We can run it like this:

results = run\_simulation(system, update\_func)

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy026.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------
>   Figure 17.2: Results from simulation of the glucose minimal model.
>   --------------------------------------------------------------------
> :::
>
> []{#chap08-fig03}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

The top plot in Figure [17.2](#chap08-fig03) shows simulated glucose
levels from the model along with the measured data. The bottom plot
shows simulated insulin levels in tissue fluid, which is in unspecified
units, and not to be confused with measured insulin levels in the blood.

With the parameters I chose, the model fits the data well, but we can do
better.

In the next chapter, we replace `run_simulation` with a better
differential equation solver, then search for the parameters that yield
the best fit for the data.

Before you go on, you might want to read the notebook for this chapter,
`chap17.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).
