11.3  The SIR equations {#sec70 .section}
-----------------------

[]{#sireqn}

If we treat time as a continuous quantity, we can write differential
equations that describe the rates of change for
[s]{style="font-style:italic"}, [i]{style="font-style:italic"}, and
[r]{style="font-style:italic"} (where [r]{style="font-style:italic"} is
the fraction of the population that has recovered):

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
|                                   | span style="font-style:italic">ds |
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
|                                   | <td style="text-align: left;">= − |
|                                   | β <span style="font-style:italic" |
|                                   | >s</span> <span style="font-style |
|                                   | :italic">i</span> </td>           |
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
|                                   | <tr class="even">                 |
|                                   | <td style="text-align: right;"><t |
|                                   | able>                             |
|                                   | <colgroup>                        |
|                                   | <col style="width: 50%" />        |
|                                   | <col style="width: 50%" />        |
|                                   | </colgroup>                       |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td></td>                         |
|                                   | <td><table>                       |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: center;">< |
|                                   | span style="font-style:italic">di |
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
|                                   | </tr>                             |
|                                   | </tbody>                          |
|                                   | </table></td>                     |
|                                   | <td style="text-align: left;">= β |
|                                   |  <span style="font-style:italic"> |
|                                   | s</span> <span style="font-style: |
|                                   | italic">i</span> − γ <span style= |
|                                   | "font-style:italic">i</span></td> |
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
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: right;"><t |
|                                   | able>                             |
|                                   | <colgroup>                        |
|                                   | <col style="width: 50%" />        |
|                                   | <col style="width: 50%" />        |
|                                   | </colgroup>                       |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td></td>                         |
|                                   | <td><table>                       |
|                                   | <tbody>                           |
|                                   | <tr class="odd">                  |
|                                   | <td style="text-align: center;">< |
|                                   | span style="font-style:italic">dr |
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
|                                   | </tr>                             |
|                                   | </tbody>                          |
|                                   | </table></td>                     |
|                                   | <td style="text-align: left;">= γ |
|                                   |  <span style="font-style:italic"> |
|                                   | i</span></td>                     |
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

To avoid cluttering the equations, I leave it implied that
[s]{style="font-style:italic"} is a function of time,
[s]{style="font-style:italic"}([t]{style="font-style:italic"}), and
likewise for [i]{style="font-style:italic"} and
[r]{style="font-style:italic"}. []{#hevea_default287}

SIR models are examples of [compartment
models]{style="font-weight:bold"}, so-called because they divide the
world into discrete categories, or compartments, and describe
transitions from one compartment to another. Compartments are also
called [stocks]{style="font-weight:bold"} and transitions between them
are called [flows]{style="font-weight:bold"}.

[]{#hevea_default288} []{#hevea_default289} []{#hevea_default290}
[]{#hevea_default291}

In this example, there are three stocks --- susceptible, infectious, and
recovered --- and two flows --- new infections and recoveries.
Compartment models are often represented visually using stock-and-flow
diagrams (see
[[https://modsimpy.com/stock]{style="font-family:monospace"}](https://modsimpy.com/stock).
Figure [11.1](#stock_flow1) shows the stock and flow diagram for an SIR
model.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy013.png)
> :::
>
> ::: {.caption}
>   -------------------------------------------------------
>   Figure 11.1: Stock and flow diagram for an SIR model.
>   -------------------------------------------------------
> :::
>
> []{#stock_flow1}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Stocks are represented by rectangles, flows by arrows. The widget in the
middle of the arrows represents a valve that controls the rate of flow;
the diagram shows the parameters that control the valves.

