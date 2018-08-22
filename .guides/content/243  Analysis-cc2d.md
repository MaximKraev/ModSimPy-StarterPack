24.3  Analysis {#sec138 .section}
--------------

[]{#paper_analysis}

The differential equations in Section [24.1](#paper) are simple enough
that we can just solve them. Since angular velocity is constant:

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = ω                              |
| --                                |                                   |
|    [d]{style="font-style:italic"} |                                   |
| θ                                 |                                   |
|    [dt]{style="font-style:italic" |                                   |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

We can find θ as a function of time by integrating both sides:

  -----------------------------------------------------------------------------------------------------------
  θ([t]{style="font-style:italic"}) = ω [t]{style="font-style:italic"} + [C]{style="font-style:italic"}~1~ 
  -----------------------------------------------------------------------------------------------------------

With the initial condition θ(0)=0, we find
[C]{style="font-style:italic"}~1~=0. Similarly,

+-----------------------+-----------------------+-----------------------+
|                       |   ------------------- |  = [k]{style="font-st |
|                       | --------------        | yle:italic"} ω        |
|                       |    [dr]{style="font-s |              []{#eqn1 |
|                       | tyle:italic"}         | }                     |
|                       |    [dt]{style="font-s |     (1)               |
|                       | tyle:italic"}         |                       |
|                       |   ------------------- |                       |
|                       | --------------        |                       |
+-----------------------+-----------------------+-----------------------+

So

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  [r]{style="font-style:italic"}([t]{style="font-style:italic"}) = [k]{style="font-style:italic"} ω [t]{style="font-style:italic"} + [C]{style="font-style:italic"}~2~ 
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

With the initial condition
[r]{style="font-style:italic"}(0)=[R]{style="font-style:italic"}~[min]{style="font-style:italic"}~,
we find
[C]{style="font-style:italic"}~2~=[R]{style="font-style:italic"}~[min]{style="font-style:italic"}~.
Then we can plug the solution for [r]{style="font-style:italic"} into
the equation for [y]{style="font-style:italic"}:

+-----------------------------------+-----------------------------------+
|                                   | <table style="width:100%;">       |
|                                   | <colgroup>                        |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | <col style="width: 9%" />         |
|                                   | </colgroup>                       |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: right;"><t |
|                                   | able>                             |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: center;">< |
|                                   | span style="font-style:italic">dy |
|                                   | </span></td>                      |
|                                   | </tr>                             |
|                                   | <tr class="even">                 |
|                                   | <td style="text-align: center;">< |
|                                   | /td>                              |
|                                   | </tr>                             |
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: center;">< |
|                                   | span style="font-style:italic">dt |
|                                   | </span></td>                      |
|                                   | </tr>                             |
|                                   | </tbody>                          |
|                                   | </table></td>                     |
|                                   | <td style="text-align: left;"> =  |
|                                   | <span style="font-style:italic">r |
|                                   | </span> ω                    <spa |
|                                   | n id="eqn2"> </span>   </td>      |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;">   |
|                                   |   (2)</td>                        |
|                                   | </tr>                             |
|                                   | <tr class="even">                 |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"><ta |
|                                   | ble>                              |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td> = </td>                      |
|                                   | <td>⎡<br />                       |
|                                   | ⎣</td>                            |
|                                   | <td><span style="font-style:itali |
|                                   | c">k</span> ω <span style="font-s |
|                                   | tyle:italic">t</span> + <span sty |
|                                   | le="font-style:italic">R</span><s |
|                                   | ub><span style="font-style:italic |
|                                   | ">min</span></sub> </td>          |
|                                   | <td>⎤<br />                       |
|                                   | ⎦</td>                            |
|                                   | <td>ω </td>                       |
|                                   | </tr>                             |
|                                   | </tbody>                          |
|                                   | </table></td>                     |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | <td style="text-align: left;"> </ |
|                                   | td>                               |
|                                   | <td style="text-align: right;"> < |
|                                   | /td>                              |
|                                   | </tr>                             |
|                                   | </tbody>                          |
|                                   | </table>                          |
+-----------------------------------+-----------------------------------+

Integrating both sides yields:

  ------------------------------------------------------------------- ---- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---- ---------------------------------------
  [y]{style="font-style:italic"}([t]{style="font-style:italic"}) =    ⎡\   [k]{style="font-style:italic"} ω [t]{style="font-style:italic"}^2^ / 2 + [R]{style="font-style:italic"}~[min]{style="font-style:italic"}~ [t]{style="font-style:italic"}    ⎤\   ω + [C]{style="font-style:italic"}~3~
                                                                      ⎣                                                                                                                                                                                ⎦    

  ------------------------------------------------------------------- ---- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---- ---------------------------------------

So [y]{style="font-style:italic"} is a parabola, as you might have
guessed. With initial condition [y]{style="font-style:italic"}(0)=0, we
find [C]{style="font-style:italic"}~3~=0.

[]{#hevea_default577} []{#hevea_default578}

We can also use these equations to find the relationship between
[y]{style="font-style:italic"} and [r]{style="font-style:italic"},
independent of time, which we can use to compute
[k]{style="font-style:italic"}. Using a move we saw in
Section [14.2](#contact), I'll divide Equations [1](#eqn1) and
[2](#eqn2), yielding

+-----------------------+-----------------------+-----------------------+
|   ------------------- |  =                    |   ------------------- |
| --------------        |                       | -------------         |
|    [dr]{style="font-s |                       |    [k]{style="font-st |
| tyle:italic"}         |                       | yle:italic"}          |
|    [dy]{style="font-s |                       |    [r]{style="font-st |
| tyle:italic"}         |                       | yle:italic"}          |
|   ------------------- |                       |   ------------------- |
| --------------        |                       | -------------         |
+-----------------------+-----------------------+-----------------------+

Separating variables yields

  ---------------------------------------------------------------------------------------------------------------------------------
  [r]{style="font-style:italic"} [dr]{style="font-style:italic"} = [k]{style="font-style:italic"} [dy]{style="font-style:italic"}
  ---------------------------------------------------------------------------------------------------------------------------------

Integrating both sides yields

  -----------------------------------------------------------------------------------------------------------------------------------------
  [r]{style="font-style:italic"}^2^ / 2 = [k]{style="font-style:italic"} [y]{style="font-style:italic"} + [C]{style="font-style:italic"} 
  -----------------------------------------------------------------------------------------------------------------------------------------

When [y]{style="font-style:italic"}=0,
[r]{style="font-style:italic"}=[R]{style="font-style:italic"}~[min]{style="font-style:italic"}~,
so

+-----------------------+-----------------------+-----------------------+
| [C]{style="font-style |   ---                 |  [R]{style="font-styl |
| :italic"} =           |    1                  | e:italic"}~[min]{styl |
|                       |    2                  | e="font-style:italic" |
|                       |   ---                 | }~^2^                 |
+-----------------------+-----------------------+-----------------------+

Solving for [y]{style="font-style:italic"}, we have

+-----------------------+-----------------------+-----------------------+
| [y]{style="font-style |   ------------------- |  ([r]{style="font-sty |
| :italic"} =           | --------------        | le:italic"}^2^ − [R]{ |
|                       |                   1   | style="font-style:ita |
|                       |    2[k]{style="font-s | lic"}~[min]{style="fo |
|                       | tyle:italic"}         | nt-style:italic"}~^2^ |
|                       |   ------------------- | )                 []{ |
|                       | --------------        | #eqn3}                |
|                       |                       |     (3)               |
+-----------------------+-----------------------+-----------------------+

When [y]{style="font-style:italic"}=[L]{style="font-style:italic"},
[r]{style="font-style:italic"}=[R]{style="font-style:italic"}~[max]{style="font-style:italic"}~;
substituting in those values yields

+-----------------------+-----------------------+-----------------------+
| [L]{style="font-style |   ------------------- |  ([R]{style="font-sty |
| :italic"} =           | --------------        | le:italic"}~[max]{sty |
|                       |                   1   | le="font-style:italic |
|                       |    2[k]{style="font-s | "}~^2^ − [R]{style="f |
|                       | tyle:italic"}         | ont-style:italic"}~[m |
|                       |   ------------------- | in]{style="font-style |
|                       | --------------        | :italic"}~^2^)        |
+-----------------------+-----------------------+-----------------------+

Solving for [k]{style="font-style:italic"} yields

+-----------------------+-----------------------+-----------------------+
| [k]{style="font-style |   ------------------- |  ([R]{style="font-sty |
| :italic"} =           | --------------        | le:italic"}~[max]{sty |
|                       |                   1   | le="font-style:italic |
|                       |    2[L]{style="font-s | "}~^2^ − [R]{style="f |
|                       | tyle:italic"}         | ont-style:italic"}~[m |
|                       |   ------------------- | in]{style="font-style |
|                       | --------------        | :italic"}~^2^)        |
|                       |                       |     []{#eqn4}         |
|                       |                       |     (4)               |
+-----------------------+-----------------------+-----------------------+

Plugging in the values of the parameters yields `2.8e-5` , the same as
the "estimate\" we computed in Section [24.2](#papersim). In this case
the estimate turns out to be exact.

In the next chapter, we'll run the simulation the other way, unrolling
the paper.

Before you go on, you might want to read the notebook for this chapter,
`chap24.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

