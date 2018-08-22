26.4  Spiderman {#sec148 .section}
---------------

In this case study we'll develop a model of Spider-Man swinging from a
springy cable of webbing attached to the top of the Empire State
Building. Initially, Spider-Man is at the top of a nearby building, as
shown in Figure [??](#spiderman).

[]{#hevea_default616} []{#hevea_default617}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy040.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------------
>   Figure 26.1: Diagram of the initial state for the Spider-Man case study.
>   --------------------------------------------------------------------------
> :::
>
> []{#spiderman}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

The origin, [O]{style="font-family:monospace"}, is at the base of the
Empire State Building. The vector `H` represents the position where the
webbing is attached to the building, relative to `O`. The vector `P` is
the position of Spider-Man relative to `O`. And `L` is the vector from
the attachment point to Spider-Man.

[]{#hevea_default618}

By following the arrows from `O`, along `H`, and along `L`, we can see
that

  -----------
  H + L = P
  -----------

So we can compute `L` like this:

  -----------
  L = P - H
  -----------

The goals of this case study are:

1.  Implement a model of this scenario to predict Spider-Man's
    trajectory. []{#hevea_default619}
2.  Choose the right time for Spider-Man to let go of the webbing in
    order to maximize the distance he travels before landing.
    []{#hevea_default620}
3.  Choose the best angle for Spider-Man to jump off the building, and
    let go of the webbing, to maximize range. []{#hevea_default621}

We'll use the following parameters: []{#hevea_default622}

1.  According to the Spider-Man Wiki^[2](#note17){#text17}^, Spider-Man
    weighs 76.
2.  Let's assume his terminal velocity is 60. []{#hevea_default623}
3.  The length of the web is 100.
4.  The initial angle of the web is 45 to the left of straight down.
5.  The spring constant of the web is 40 when the cord is stretched, and
    0 when it's compressed.

In the repository for this book, you will find a notebook,
`spiderman.ipynb`, which contains starter code. Read through the
notebook and run the code. It uses `minimize`, which is a SciPy function
that can search for an optimal set of parameters (as contrasted with
`min_bounded`, which can only search along a single axis).

