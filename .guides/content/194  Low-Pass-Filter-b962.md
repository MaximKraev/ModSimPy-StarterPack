19.4  Low-Pass Filter {#sec115 .section}
---------------------

The following circuit diagram^[1](#note12){#text12}^ shows a low-pass
filter built with one resistor and one capacitor.

::: {.center}
![](ModSimPy028.png)
:::

A "filter\" is a circuit takes a signal,
[V]{style="font-style:italic"}~[in]{style="font-style:italic"}~, as
input and produces a signal,
[V]{style="font-style:italic"}~[out]{style="font-style:italic"}~, as
output. In this context, a "signal\" is a voltage that changes over
time.

A filter is "low-pass\" if it allows low-frequency signals to pass from
[V]{style="font-style:italic"}~[in]{style="font-style:italic"}~ to
[V]{style="font-style:italic"}~[out]{style="font-style:italic"}~
unchanged, but it reduces the amplitude of high-frequency signals.

By applying the laws of circuit analysis, we can derive a differential
equation that describes the behavior of this system. By solving the
differential equation, we can predict the effect of this circuit on any
input signal.

Suppose we are given
[V]{style="font-style:italic"}~[in]{style="font-style:italic"}~ and
[V]{style="font-style:italic"}~[out]{style="font-style:italic"}~ at a
particular instant in time. By Ohm's law, which is a simple model of the
behavior of resistors, the instantaneous current through the resistor
is:

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [I]{style="font-style:italic"}~[R]{style="font-style:italic"}~ = ([V]{style="font-style:italic"}~[in]{style="font-style:italic"}~ − [V]{style="font-style:italic"}~[out]{style="font-style:italic"}~) / [R]{style="font-style:italic"} 
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

where [R]{style="font-style:italic"} is resistance in ohms ().

Assuming that no current flows through the output of the circuit,
Kirchhoff's current law implies that the current through the capacitor
is:

  ----------------------------------------------------------------------------------------------------------------------------------
  [I]{style="font-style:italic"}~[C]{style="font-style:italic"}~ = [I]{style="font-style:italic"}~[R]{style="font-style:italic"}~ 
  ----------------------------------------------------------------------------------------------------------------------------------

According to a simple model of the behavior of capacitors, current
through the capacitor causes a change in the voltage across the
capacitor:

+-----------------------+-----------------------+-----------------------+
| [I]{style="font-style |   ------------------- |                       |
| :italic"}~[C]{style=" | --------------------- |                       |
| font-style:italic"}~  | --------------------- |                       |
| = [C]{style="font-sty | --------------------- |                       |
| le:italic"}           | ---------------       |                       |
|                       |    [d]{style="font-st |                       |
|                       | yle:italic"} [V]{styl |                       |
|                       | e="font-style:italic" |                       |
|                       | }~[out]{style="font-s |                       |
|                       | tyle:italic"}~        |                       |
|                       |                       |                       |
|                       |               [dt]{st |                       |
|                       | yle="font-style:itali |                       |
|                       | c"}                   |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ---------------       |                       |
+-----------------------+-----------------------+-----------------------+

where [C]{style="font-style:italic"} is capacitance in farads ().
Combining these equations yields a differential equation for
[V]{style="font-style:italic"}~[out]{style="font-style:italic"}~:

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  =              |   ------------- |                 |
| --------------- |                 | --------------- |                 |
| --------------- |                 | --------------- |                 |
| --------------- |                 | --------------- |                 |
| --------------- |                 | --------------- |                 |
| --------------- |                 | --------------- |                 |
| ---------       |                 | --------------- |                 |
|    [d]{style="f |                 | --------------- |                 |
| ont-style:itali |                 | --------------  |                 |
| c"} [V]{style=" |                 |    [V]{style="f |                 |
| font-style:ital |                 | ont-style:itali |                 |
| ic"}~[out]{styl |                 | c"}~[in]{style= |                 |
| e="font-style:i |                 | "font-style:ita |                 |
| talic"}~        |                 | lic"}~ − [V]{st |                 |
|                 |                 | yle="font-style |                 |
|                 |                 | :italic"}~[out] |                 |
|      [dt]{style |                 | {style="font-st |                 |
| ="font-style:it |                 | yle:italic"}~   |                 |
| alic"}          |                 |                 |                 |
|   ------------- |                 |                 |                 |
| --------------- |                 |        [R]{styl |                 |
| --------------- |                 | e="font-style:i |                 |
| --------------- |                 | talic"} [C]{sty |                 |
| --------------- |                 | le="font-style: |                 |
| --------------- |                 | italic"}        |                 |
| ---------       |                 |   ------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------- |                 |
|                 |                 | --------------  |                 |
+-----------------+-----------------+-----------------+-----------------+

In the repository for this book, you will find a notebook,
`filter.ipynb`, which contains starter code for this case study. Follow
the instructions to simulate the low-pass filter for input signals like
this:

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [V]{style="font-style:italic"}~[in]{style="font-style:italic"}~([t]{style="font-style:italic"}) = [A]{style="font-style:italic"} cos(2 π [f]{style="font-style:italic"} [t]{style="font-style:italic"}) 
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

where [A]{style="font-style:italic"} is the amplitude of the input
signal, say 5, and [f]{style="font-style:italic"} is the frequency of
the signal in .

In the repository for this book, you will find a notebook,
`filter.ipynb`, which contains starter code for this case study. Read
the notebook, run the code, and work on the exercises.

