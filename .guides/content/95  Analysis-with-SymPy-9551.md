9.5  Analysis with SymPy {#sec57 .section}
------------------------

Python has a library called SymPy that provides symbolic computation
tools similar to Mathematica. They are not as easy to use as
WolframAlpha, but they have some other advantages.

[]{#hevea_default260}

Before we can use SymPy, we have to import it:

[]{#hevea_default261} []{#hevea_default262}

from sympy import \*

SymPy defines many functions, and some of them conflict with functions
defined in `modsim` and the other libraries we're using. To avoid these
conflicts, I suggest that you do symbolic computation with SymPy in a
separate notebook.

SymPy defines a `Symbol` object that represents symbolic variable names,
functions, and other mathematical entities.

[]{#hevea_default263}

The `symbols` function takes a string and returns `Symbol` objects. So
if we run this assignment:

t = symbols('t')

Python understands that `t` is a symbol, not a numerical value. If we
now run

expr = t + 1

Python doesn't try to perform numerical addition; rather, it creates a
new `Symbol` that represents the sum of `t` and `1`. We can evaluate the
sum using `subs`, which substitutes a value for a symbol. This example
substitutes 2 for `t`:

expr.subs(t, 2)

The result is 3.

Functions in SymPy are represented by a special kind of `Symbol`:

f = Function('f')

Now if we write `f(t)`, we get an object that represents the evaluation
of a function, [f]{style="font-style:italic"}, at a value,
[t]{style="font-style:italic"}. But again SymPy doesn't actually try to
evaluate it.

