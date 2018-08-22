0.2  How much programming do I need? {#sec3 .section}
------------------------------------

If you have never programmed before, you should be able to read this
book, understand it, and do the exercises. I will do my best to explain
everything you need to know; in particular, I have chosen carefully the
vocabulary I introduce, and I try to define each term the first time it
is used. If you find that I have used a term without defining it, let me
know.

If you have programmed before, you will have an easier time getting
started, but you might be uncomfortable in some places. I take an
approach to programming you have probably not seen before.

Most programming classes^[1](#note1){#text1}^ have two big problems:

1.  They go "bottom up\", starting with basic language features and
    gradually adding more powerful tools. As a result, it takes a long
    time before students can do anything more interesting than convert
    Fahrenheit to Celsius.

    []{#hevea_default0}

2.  They have no context. Students learn to program with no particular
    goal in mind, so the exercises span an incoherent collection of
    topics, and the exercises tend to be unmotivated.

In this book, you learn to program with an immediate goal in mind:
writing simulations of physical systems. And we proceed "top down\", by
which I mean we use professional-strength data structures and language
features right away. In particular, we use the following Python
[libraries]{style="font-weight:bold"}:

[]{#hevea_default1}

-   NumPy for basic numerical computation (see
    [[https://www.numpy.org/]{style="font-family:monospace"}](https://www.numpy.org/)).

    []{#hevea_default2}

-   SciPy for scientific computation (see
    [[https://www.scipy.org/]{style="font-family:monospace"}](https://www.scipy.org/)).

    []{#hevea_default3}

-   Matplotlib for visualization (see
    [[https://matplotlib.org/]{style="font-family:monospace"}](https://matplotlib.org/)).

    []{#hevea_default4}

-   Pandas for working with data (see
    [[https://pandas.pydata.org/]{style="font-family:monospace"}](https://pandas.pydata.org/)).

    []{#hevea_default5}

-   SymPy for symbolic computation, (see
    [[https://www.sympy.org]{style="font-family:monospace"}](https://www.sympy.org)).

    []{#hevea_default6}

-   Pint for units like kilograms and meters (see
    [[https://pint.readthedocs.io]{style="font-family:monospace"}](https://pint.readthedocs.io)).

    []{#hevea_default7}

-   Jupyter for reading, running, and developing code (see
    [[https://jupyter.org]{style="font-family:monospace"}](https://jupyter.org)).

    []{#hevea_default8}

These tools let you work on more interesting programs sooner, but there
are some drawbacks: they can be hard to use, and it can be challenging
to keep track of which library does what and how they interact.

I have tried to mitigate these problems by providing a library, called
`modsim`, that makes it easier to get started with these tools, and
provides some additional capabilities.

[]{#hevea_default9}

Some features in the `modsim` library are like training wheels; at some
point you will probably stop using them and start working with the
underlying libraries directly. Other features you might find useful the
whole time you are working through the book, and later.

I encourage you to read the the `modsim` library code. Most of it is not
complicated, and I tried to make it readable. Particularly if you have
some programming experience, you might learn something by reverse
engineering my design decisions.

