26.3  Bungee dunk revisited {#sec147 .section}
---------------------------

In Chapter [21](#chap21), we simulated a bungee jump with a model that
took into account gravity, air resistance, and the spring force of the
bungee cord, but we ignored the weight of the cord.

[]{#hevea_default614} []{#hevea_default615}

It is tempting to say that the cord has no effect because it falls along
with the jumper, but that intuition is incorrect. As the cord falls, it
transfers energy to the jumper.

At
[[https://modsimpy.com/bungee]{style="font-family:monospace"}](https://modsimpy.com/bungee)
you'll find a paper^[1](#note16){#text16}^ that explains this phenomenon
and derives the acceleration of the jumper,
[a]{style="font-style:italic"}, as a function of position,
[y]{style="font-style:italic"}, and velocity,
[v]{style="font-style:italic"}:

+-----------------------+-----------------------+-----------------------+
| [a]{style="font-style |   ------------------- |                       |
| :italic"} = [g]{style | --------------------- |                       |
| ="font-style:italic"} | --------------------- |                       |
|  +                    | --------------------- |                       |
|                       | ------------------    |                       |
|                       |                       |                       |
|                       |             µ [v]{sty |                       |
|                       | le="font-style:italic |                       |
|                       | "}^2^/2               |                       |
|                       |    µ([L]{style="font- |                       |
|                       | style:italic"}+[y]{st |                       |
|                       | yle="font-style:itali |                       |
|                       | c"}) + 2[L]{style="fo |                       |
|                       | nt-style:italic"}     |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ------------------    |                       |
+-----------------------+-----------------------+-----------------------+

where [g]{style="font-style:italic"} is acceleration due to gravity,
[L]{style="font-style:italic"} is the length of the cord, and µ is the
ratio of the mass of the cord, [m]{style="font-style:italic"}, and the
mass of the jumper, [M]{style="font-style:italic"}.

If you don't believe that their model is correct, this video might
convince you:
[[https://modsimpy.com/drop]{style="font-family:monospace"}](https://modsimpy.com/drop).

Modify the code from Chapter [21](#chap21) to model this effect. How
does the behavior of the system change as we vary the mass of the cord?
When the mass of the cord equals the mass of the jumper, what is the net
effect on the lowest point in the jump?

