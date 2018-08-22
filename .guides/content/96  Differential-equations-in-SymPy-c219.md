9.6  Differential equations in SymPy {#sec58 .section}
------------------------------------

SymPy provides a function, `diff`, that can differentiate a function. We
can apply it to `f(t)` like this:

[]{#hevea_default264} []{#hevea_default265}

dfdt = diff(f(t), t)

The result is a `Symbol` that represents the derivative of `f` with
respect to `t`. But again, SymPy doesn't try to compute the derivative
yet.

[]{#hevea_default266}

To represent a differential equation, we use `Eq`:

alpha = symbols('alpha') eq1 = Eq(dfdt, alpha\*f(t))

The result is an object that represents an equation, which is displayed
like this:

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  [f]{styl |   ---- -- |  = α [f]{ |   ---- -- |           |
| --------- | e="font-s | --------- | style="fo | --------- |           |
| --------- | tyle:ital | --------- | nt-style: | --------- |           |
| --------- | ic"}      | --------- | italic"}  | --------- |           |
| --------- |           | ---- ---- |           | ---- ---- |           |
| --------- |           |   ⎛\   [t |           |   ⎛\   [t |           |
| --------- |           | ]{style=" |           | ]{style=" |           |
| --        |           | font-styl |           | font-styl |           |
|           |           | e:italic" |           | e:italic" |           |
|           |           | }    ⎞\   |           | }    ⎞\   |           |
| [d]{style |           |   ⎝       |           |   ⎝       |           |
| ="font-st |           |           |           |           |           |
| yle:itali |           |           |           |           |           |
| c"}       |           |           |           |           |           |
|    [d]{st |           |      ⎠    |           |      ⎠    |           |
| yle="font |           |           |           |           |           |
| -style:it |           |   ---- -- |           |   ---- -- |           |
| alic"} [t |           | --------- |           | --------- |           |
| ]{style=" |           | --------- |           | --------- |           |
| font-styl |           | --------- |           | --------- |           |
| e:italic" |           | ---- ---- |           | ---- ---- |           |
| }         |           |           |           |           |           |
|   ------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --------- |           |           |           |           |           |
| --        |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

Now we can use `dsolve` to solve this differential equation:

solution\_eq = dsolve(eq1)

The result is the equation

+-----------------------+-----------------------+-----------------------+
| [f]{style="font-style |   ---- -------------- |  = [C]{style="font-st |
| :italic"}             | ------------------- - | yle:italic"}~1~ exp(α |
|                       | ---                   |  [t]{style="font-styl |
|                       |   ⎛\   [t]{style="fon | e:italic"})           |
|                       | t-style:italic"}    ⎞ |                       |
|                       | \                     |                       |
|                       |   ⎝                   |                       |
|                       |                     ⎠ |                       |
|                       |                       |                       |
|                       |   ---- -------------- |                       |
|                       | ------------------- - |                       |
|                       | ---                   |                       |
+-----------------------+-----------------------+-----------------------+

This is the [general solution]{style="font-weight:bold"}, which still
contains an unspecified constant, [C]{style="font-style:italic"}~1~. To
get the [particular solution]{style="font-weight:bold"} where
[f]{style="font-style:italic"}(0) = [p]{style="font-style:italic"}~0~,
we substitute `p0` for `C1`. First, we have to create two more symbols:

[]{#hevea_default267} []{#hevea_default268}

C1, p\_0 = symbols('C1 p\_0')

Now we can perform the substitution:

particular = solution\_eq.subs(C1, p\_0)

The result is

+-----------------------+-----------------------+-----------------------+
| [f]{style="font-style |   ---- -------------- |  = [p]{style="font-st |
| :italic"}             | ------------------- - | yle:italic"}~0~ exp(α |
|                       | ---                   |  [t]{style="font-styl |
|                       |   ⎛\   [t]{style="fon | e:italic"})           |
|                       | t-style:italic"}    ⎞ |                       |
|                       | \                     |                       |
|                       |   ⎝                   |                       |
|                       |                     ⎠ |                       |
|                       |                       |                       |
|                       |   ---- -------------- |                       |
|                       | ------------------- - |                       |
|                       | ---                   |                       |
+-----------------------+-----------------------+-----------------------+

This function is called the [exponential growth
curve]{style="font-weight:bold"}; see
[[https://modsimpy.com/expo]{style="font-family:monospace"}](https://modsimpy.com/expo).

[]{#hevea_default269}

