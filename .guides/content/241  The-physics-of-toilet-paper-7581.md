24.1  The physics of toilet paper {#sec136 .section}
---------------------------------

[]{#paper}

As a simple example of a system with rotation, we'll simulate the
manufacture of a roll of toilet paper. Starting with a cardboard tube at
the center, we will roll up 47 of paper, the typical length of a roll of
toilet paper in the U.S. (see
[[https://modsimpy.com/paper]{style="font-family:monospace"}](https://modsimpy.com/paper)).

[]{#hevea_default565}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy036.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------------------------------------------------------------------------------------
>   Figure 24.1: Diagram of a roll of toilet paper, showing change in paper length as a result of a small rotation, [d]{style="font-style:italic"}θ.
>   --------------------------------------------------------------------------------------------------------------------------------------------------
> :::
>
> []{#paper_roll}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [24.1](#paper_roll) shows a diagram of the system:
[r]{style="font-style:italic"} represents the radius of the roll at a
point in time. Initially, [r]{style="font-style:italic"} is the radius
of the cardboard core,
[R]{style="font-style:italic"}~[min]{style="font-style:italic"}~. When
the roll is complete, [r]{style="font-style:italic"} is
[R]{style="font-style:italic"}~[max]{style="font-style:italic"}~.

I'll use θ to represent the total rotation of the roll in radians. In
the diagram, [d]{style="font-style:italic"}θ represents a small increase
in θ, which corresponds to a distance along the circumference of the
roll of [r]{style="font-style:italic"} [d]{style="font-style:italic"}θ.

[]{#hevea_default566}

Finally, I'll use [y]{style="font-style:italic"} to represent the total
length of paper that's been rolled. Initially, θ=0 and
[y]{style="font-style:italic"}=0. For each small increase in θ, there is
a corresponding increase in [y]{style="font-style:italic"}:

  ---------------------------------------------------------------------------------------------------
  [dy]{style="font-style:italic"} = [r]{style="font-style:italic"} [d]{style="font-style:italic"}θ 
  ---------------------------------------------------------------------------------------------------

If we divide both sides by a small increase in time,
[dt]{style="font-style:italic"}, we get a differential equation for
[y]{style="font-style:italic"} as a function of time.

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = [r]{style="f |   ------------- |                 |
| --------------- | ont-style:itali | --------------- |                 |
| -----           | c"}             | -----           |                 |
|    [dy]{style=" |                 |    [d]{style="f |                 |
| font-style:ital |                 | ont-style:itali |                 |
| ic"}            |                 | c"}θ            |                 |
|    [dt]{style=" |                 |    [dt]{style=" |                 |
| font-style:ital |                 | font-style:ital |                 |
| ic"}            |                 | ic"}            |                 |
|   ------------- |                 |   ------------- |                 |
| --------------- |                 | --------------- |                 |
| -----           |                 | -----           |                 |
+-----------------+-----------------+-----------------+-----------------+

As we roll up the paper, [r]{style="font-style:italic"} increases, too.
Assuming that [r]{style="font-style:italic"} increases by a fixed amount
per revolution, we can write

  ---------------------------------------------------------------------------------------------------
  [dr]{style="font-style:italic"} = [k]{style="font-style:italic"} [d]{style="font-style:italic"}θ 
  ---------------------------------------------------------------------------------------------------

Where [k]{style="font-style:italic"} is an unknown constant we'll have
to figure out. Again, we can divide both sides by
[dt]{style="font-style:italic"} to get a differential equation in time:

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = [k]{style="f |   ------------- |                 |
| --------------- | ont-style:itali | --------------- |                 |
| -----           | c"}             | -----           |                 |
|    [dr]{style=" |                 |    [d]{style="f |                 |
| font-style:ital |                 | ont-style:itali |                 |
| ic"}            |                 | c"}θ            |                 |
|    [dt]{style=" |                 |    [dt]{style=" |                 |
| font-style:ital |                 | font-style:ital |                 |
| ic"}            |                 | ic"}            |                 |
|   ------------- |                 |   ------------- |                 |
| --------------- |                 | --------------- |                 |
| -----           |                 | -----           |                 |
+-----------------+-----------------+-----------------+-----------------+

Finally, let's assume that θ increases at a constant rate of 10 (about
95 revolutions per minute):

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = 10                             |
| --                                |                                   |
|    [d]{style="font-style:italic"} |                                   |
| θ                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

This rate of change is called an [angular
velocity]{style="font-weight:bold"}. Now we have a system of three
differential equations we can use to simulate the system.

[]{#hevea_default567} []{#hevea_default568}

