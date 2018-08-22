16.2  Mixing liquids {#sec97 .section}
--------------------

When we mix two liquids, the temperature of the mixture depends on the
temperatures of the ingredients, but it might not be obvious how to
compute it.

[]{#hevea_default396}

Assuming there are no chemical reactions that either produce or consume
heat, the total thermal energy of the system is the same before and
after mixing; in other words, thermal energy is
[conserved]{style="font-weight:bold"}.

[]{#hevea_default397}

If the temperature of the first liquid is
[T]{style="font-style:italic"}~1~, the temperature of the second liquid
is [T]{style="font-style:italic"}~2~, and the final temperature of the
mixture is [T]{style="font-style:italic"}, the heat transfer into the
first liquid is [C]{style="font-style:italic"}~1~
([T]{style="font-style:italic"} − [T]{style="font-style:italic"}~1~) and
the heat transfer into the second liquid is
[C]{style="font-style:italic"}~2~ ([T]{style="font-style:italic"} −
[T]{style="font-style:italic"}~2~), where
[C]{style="font-style:italic"}~1~ and [C]{style="font-style:italic"}~2~
are the thermal masses of the liquids.

In order to conserve energy, these heat transfers must add up to 0:

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [C]{style="font-style:italic"}~1~ ([T]{style="font-style:italic"} − [T]{style="font-style:italic"}~1~) + [C]{style="font-style:italic"}~2~ ([T]{style="font-style:italic"} − [T]{style="font-style:italic"}~2~) = 0 
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

We can solve this equation for T:

+-----------------------+-----------------------+-----------------------+
| [T]{style="font-style |   ------------------- |                       |
| :italic"} =           | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ---------------       |                       |
|                       |    [C]{style="font-st |                       |
|                       | yle:italic"}~1~ [T]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~1~ + [C]{style=" |                       |
|                       | font-style:italic"}~2 |                       |
|                       | ~ [T]{style="font-sty |                       |
|                       | le:italic"}~2~        |                       |
|                       |                       |                       |
|                       |                 [C]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~1~ + [C]{style=" |                       |
|                       | font-style:italic"}~2 |                       |
|                       | ~                     |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ---------------       |                       |
+-----------------------+-----------------------+-----------------------+

For the coffee cooling problem, we have the volume of each liquid; if we
also know the density, ρ, and the specific heat capacity,
[c]{style="font-style:italic"}~[p]{style="font-style:italic"}~, we can
compute thermal mass:

  -----------------------------------------------------------------------------------------------------------------------------------
  [C]{style="font-style:italic"} = ρ [V]{style="font-style:italic"} [c]{style="font-style:italic"}~[p]{style="font-style:italic"}~ 
  -----------------------------------------------------------------------------------------------------------------------------------

If we assume that the density and specific heat of the milk and coffee
are equal, they drop out of the equation, and we can write:

+-----------------------+-----------------------+-----------------------+
| [T]{style="font-style |   ------------------- |                       |
| :italic"} =           | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ---------------       |                       |
|                       |    [V]{style="font-st |                       |
|                       | yle:italic"}~1~ [T]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~1~ + [V]{style=" |                       |
|                       | font-style:italic"}~2 |                       |
|                       | ~ [T]{style="font-sty |                       |
|                       | le:italic"}~2~        |                       |
|                       |                       |                       |
|                       |                 [V]{s |                       |
|                       | tyle="font-style:ital |                       |
|                       | ic"}~1~ + [V]{style=" |                       |
|                       | font-style:italic"}~2 |                       |
|                       | ~                     |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | ---------------       |                       |
+-----------------------+-----------------------+-----------------------+

where [V]{style="font-style:italic"}~1~ and
[V]{style="font-style:italic"}~2~ are the volumes of the liquids. As an
exercise, you can look up the density and specific heat of milk to see
how good this approximation is.

[]{#hevea_default398} []{#hevea_default399} []{#hevea_default400}

The following function takes two `System` objects that represent the
coffee and milk, and creates a new `System` to represent the mixture:

def mix(s1, s2): assert s1.t\_end == s2.t\_end

V\_mix = s1.volume + s2.volume

T\_mix = (s1.volume \* s1.T\_final + s2.volume \* s2.T\_final) / V\_mix

mixture = make\_system(T\_init=T\_mix, t\_end=0, r=s1.r, volume=V\_mix)

return mixture

The first line is an `assert` statement, which is a way of checking for
errors. It compares `t_end` for the two systems to confirm that they
have been cooling for the same time. If not, `assert` displays an error
message and stops the program.

[]{#hevea_default401} []{#hevea_default402}

The next two statements compute the total volume of the mixture and its
temperature. Finally, `mix` makes a new `System` object and returns it.

This function uses the value of `r` from `s1` as the value of `r` for
the mixture. If `s1` represents the coffee, and we are adding the milk
to the coffee, this is probably a reasonable choice. On the other hand,
when we increase the amount of liquid in the coffee cup, that might
change `r`. So this is an assumption we might want to revisit.

