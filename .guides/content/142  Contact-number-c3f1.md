14.2  Contact number {#sec87 .section}
--------------------

[]{#contact}

Recall that the number of new infections in a given day is β [s i
N]{style="font-style:italic"}, and the number of recoveries is γ [i
N]{style="font-style:italic"}. If we divide these quantities, the result
is β [s]{style="font-style:italic"} / γ, which is the number of new
infections per recovery (as a fraction of the population).

[]{#hevea_default354} []{#hevea_default355}

When a new disease is introduced to a susceptible population,
[s]{style="font-style:italic"} is approximately 1, so the number of
people infected by each sick person is β / γ. This ratio is called the
"contact number\" or "basic reproduction number\" (see
[[https://modsimpy.com/contact]{style="font-family:monospace"}](https://modsimpy.com/contact)).
By convention it is usually denoted [R]{style="font-style:italic"}~0~,
but in the context of an SIR model, this notation is confusing, so we'll
use [c]{style="font-style:italic"} instead.

The results in the previous section suggest that there is a relationship
between [c]{style="font-style:italic"} and the total number of
infections. We can derive this relationship by analyzing the
differential equations from Section [11.3](#sireqn):

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

In the same way we divided the contact rate by the infection rate to get
the dimensionless quantity [c]{style="font-style:italic"}, now we'll
divide [di]{style="font-style:italic"}/[dt]{style="font-style:italic"}
by [ds]{style="font-style:italic"}/[dt]{style="font-style:italic"} to
get a ratio of rates:

+-----------------+-----------------+-----------------+-----------------+
|   ------------- |  = −1 +         |   ------------- |                 |
| --------------- |                 | --------------- |                 |
| -----           |                 | -----           |                 |
|    [di]{style=" |                 |                 |                 |
| font-style:ital |                 |    1            |                 |
| ic"}            |                 |    [cs]{style=" |                 |
|    [ds]{style=" |                 | font-style:ital |                 |
| font-style:ital |                 | ic"}            |                 |
| ic"}            |                 |   ------------- |                 |
|   ------------- |                 | --------------- |                 |
| --------------- |                 | -----           |                 |
| -----           |                 |                 |                 |
+-----------------+-----------------+-----------------+-----------------+

Dividing one differential equation by another is not an obvious move,
but in this case it is useful because it gives us a relationship between
[i]{style="font-style:italic"}, [s]{style="font-style:italic"} and
[c]{style="font-style:italic"} that does not depend on time. From that
relationship, we can derive an equation that relates
[c]{style="font-style:italic"} to the final value of
[S]{style="font-style:italic"}. In theory, this equation makes it
possible to infer [c]{style="font-style:italic"} by observing the course
of an epidemic.

Here's how the derivation goes. We multiply both sides of the previous
equation by [ds]{style="font-style:italic"}:

+---------+---------+---------+---------+---------+---------+---------+
| [di]{st | ⎛\      | −1 +    |   ----- |         | ⎞\      | [ds]{st |
| yle="fo | ⎜\      |         | ------- |         | ⎟\      | yle="fo |
| nt-styl | ⎜\      |         | ------- |         | ⎟\      | nt-styl |
| e:itali | ⎝       |         | ------- |         | ⎠       | e:itali |
| c"} =   |         |         | ------- |         |         | c"}     |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
|         |         |         |     1   |         |         |         |
|         |         |         |    [cs] |         |         |         |
|         |         |         | {style= |         |         |         |
|         |         |         | "font-s |         |         |         |
|         |         |         | tyle:it |         |         |         |
|         |         |         | alic"}  |         |         |         |
|         |         |         |   ----- |         |         |         |
|         |         |         | ------- |         |         |         |
|         |         |         | ------- |         |         |         |
|         |         |         | ------- |         |         |         |
|         |         |         | ------- |         |         |         |
+---------+---------+---------+---------+---------+---------+---------+

And then integrate both sides:

+-----------------------+-----------------------+-----------------------+
| [i]{style="font-style |   ------------------- |  log[s]{style="font-s |
| :italic"} = −[s]{styl | -------------         | tyle:italic"} + [q]{s |
| e="font-style:italic" |                  1    | tyle="font-style:ital |
| } +                   |    [c]{style="font-st | ic"}                  |
|                       | yle:italic"}          |                       |
|                       |   ------------------- |                       |
|                       | -------------         |                       |
+-----------------------+-----------------------+-----------------------+

where [q]{style="font-style:italic"} is a constant of integration.
Rearranging terms yields:

+-----------------------+-----------------------+-----------------------+
| [q]{style="font-style |   ------------------- |  log[s]{style="font-s |
| :italic"} = [i]{style | -------------         | tyle:italic"}         |
| ="font-style:italic"} |                  1    |                       |
|  + [s]{style="font-st |    [c]{style="font-st |                       |
| yle:italic"} −        | yle:italic"}          |                       |
|                       |   ------------------- |                       |
|                       | -------------         |                       |
+-----------------------+-----------------------+-----------------------+

Now let's see if we can figure out what [q]{style="font-style:italic"}
is. At the beginning of an epidemic, if the fraction infected is small
and nearly everyone is susceptible, we can use the approximations
[i]{style="font-style:italic"}(0) = 0 and
[s]{style="font-style:italic"}(0) = 1 to compute
[q]{style="font-style:italic"}:

+-----------------------+-----------------------+-----------------------+
| [q]{style="font-style |   ------------------- |  log1                 |
| :italic"} = 0 + 1 +   | -------------         |                       |
|                       |                  1    |                       |
|                       |    [c]{style="font-st |                       |
|                       | yle:italic"}          |                       |
|                       |   ------------------- |                       |
|                       | -------------         |                       |
+-----------------------+-----------------------+-----------------------+

Since log1 = 0, we get [q]{style="font-style:italic"} = 1.
[]{#hevea_default356} []{#hevea_default357}

Now, at the end of the epidemic, let's assume that
[i]{style="font-style:italic"}(∞) = 0, and
[s]{style="font-style:italic"}(∞) is an unknown quantity,
[s]{style="font-style:italic"}~∞~. Now we have:

+-----------------------+-----------------------+-----------------------+
| [q]{style="font-style |   ------------------- |  log[s]{style="font-s |
| :italic"} = 1 = 0 + [ | -------------         | tyle:italic"}~∞~      |
| s]{style="font-style: |                  1    |                       |
| italic"}~∞~ −         |    [c]{style="font-st |                       |
|                       | yle:italic"}          |                       |
|                       |   ------------------- |                       |
|                       | -------------         |                       |
+-----------------------+-----------------------+-----------------------+

Solving for [c]{style="font-style:italic"}, we get

+-----------------------+-----------------------+-----------------------+
| [c]{style="font-style |   ------------------- |                       |
| :italic"} =           | --------------------  |                       |
|                       |    log[s]{style="font |                       |
|                       | -style:italic"}~∞~    |                       |
|                       |    [s]{style="font-st |                       |
|                       | yle:italic"}~∞~ − 1   |                       |
|                       |   ------------------- |                       |
|                       | --------------------  |                       |
+-----------------------+-----------------------+-----------------------+

By relating [c]{style="font-style:italic"} and
[s]{style="font-style:italic"}~∞~, this equation makes it possible to
estimate [c]{style="font-style:italic"} based on data, and possibly
predict the behavior of future epidemics.

