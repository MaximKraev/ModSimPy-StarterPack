9.7  Solving the quadratic growth model {#sec59 .section}
---------------------------------------

In the notebook for this chapter, you will see how to use the same tools
to solve the quadratic growth model with parameters
[r]{style="font-style:italic"} and [K]{style="font-style:italic"}. The
general solution is

+-------------+-------------+-------------+-------------+-------------+
| [f]{style=" |   ---- ---- |  =          |   --------- |             |
| font-style: | ----------- |             | ----------- |             |
| italic"}    | ----------- |             | ----------- |             |
|             | ------- --- |             | ----------- |             |
|             | -           |             | ----------- |             |
|             |   ⎛\   [t]{ |             | ----------- |             |
|             | style="font |             | ----------- |             |
|             | -style:ital |             | ----------- |             |
|             | ic"}    ⎞\  |             | ----------- |             |
|             |   ⎝         |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |         ⎠   |             | ----------- |             |
|             |             |             | ----------- |             |
|             |   ---- ---- |             | ----------- |             |
|             | ----------- |             | ---         |             |
|             | ----------- |             |    [K]{styl |             |
|             | ------- --- |             | e="font-sty |             |
|             | -           |             | le:italic"} |             |
|             |             |             |  exp([C]{st |             |
|             |             |             | yle="font-s |             |
|             |             |             | tyle:italic |             |
|             |             |             | "}~1~ [K]{s |             |
|             |             |             | tyle="font- |             |
|             |             |             | style:itali |             |
|             |             |             | c"} + [r]{s |             |
|             |             |             | tyle="font- |             |
|             |             |             | style:itali |             |
|             |             |             | c"} [t]{sty |             |
|             |             |             | le="font-st |             |
|             |             |             | yle:italic" |             |
|             |             |             | })          |             |
|             |             |             |             |             |
|             |             |             |      exp([C |             |
|             |             |             | ]{style="fo |             |
|             |             |             | nt-style:it |             |
|             |             |             | alic"}~1~ [ |             |
|             |             |             | K]{style="f |             |
|             |             |             | ont-style:i |             |
|             |             |             | talic"} + [ |             |
|             |             |             | r]{style="f |             |
|             |             |             | ont-style:i |             |
|             |             |             | talic"} [t] |             |
|             |             |             | {style="fon |             |
|             |             |             | t-style:ita |             |
|             |             |             | lic"}) − 1  |             |
|             |             |             |   --------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ----------- |             |
|             |             |             | ---         |             |
+-------------+-------------+-------------+-------------+-------------+

To get the particular solution where [f]{style="font-style:italic"}(0) =
[p]{style="font-style:italic"}~0~, we evaluate the general solution at
[t]{style="font-style:italic"}=0, which yields:

+-----------------------+-----------------------+-----------------------+
| [f]{style="font-style |   ------------------- |                       |
| :italic"}(0) =        | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------  |                       |
|                       |    [K]{style="font-st |                       |
|                       | yle:italic"} exp([C]{ |                       |
|                       | style="font-style:ita |                       |
|                       | lic"}~1~ [K]{style="f |                       |
|                       | ont-style:italic"})   |                       |
|                       |                 exp([ |                       |
|                       | C]{style="font-style: |                       |
|                       | italic"}~1~ [K]{style |                       |
|                       | ="font-style:italic"} |                       |
|                       | ) − 1                 |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------  |                       |
+-----------------------+-----------------------+-----------------------+

Then we set this expression equal to [p]{style="font-style:italic"}~0~
and solve for [C]{style="font-style:italic"}~1~. The result is:

+-------------+-------------+-------------+-------------+-------------+
| [C]{style=" |   --------- |  ln         | <table>     |             |
| font-style: | ----------- |             | <colgroup>  |             |
| italic"}~1~ | ----------- |             | <col style= |             |
|  =          | -           |             | "width: 20% |             |
|             |             |             | " />        |             |
|             |       1     |             | <col style= |             |
|             |    [K]{styl |             | "width: 20% |             |
|             | e="font-sty |             | " />        |             |
|             | le:italic"} |             | <col style= |             |
|             |   --------- |             | "width: 20% |             |
|             | ----------- |             | " />        |             |
|             | ----------- |             | <col style= |             |
|             | -           |             | "width: 20% |             |
|             |             |             | " />        |             |
|             |             |             | <col style= |             |
|             |             |             | "width: 20% |             |
|             |             |             | " />        |             |
|             |             |             | </colgroup> |             |
|             |             |             | <tbody>     |             |
|             |             |             | <tr class=" |             |
|             |             |             | odd">       |             |
|             |             |             | <td>⎛<br /> |             |
|             |             |             | ⎜<br />     |             |
|             |             |             | ⎜<br />     |             |
|             |             |             | ⎝</td>      |             |
|             |             |             | <td>− </td> |             |
|             |             |             | <td><table> |             |
|             |             |             | <tbody>     |             |
|             |             |             | <tr class=" |             |
|             |             |             | odd">       |             |
|             |             |             | <td style=" |             |
|             |             |             | text-align: |             |
|             |             |             |  center;">< |             |
|             |             |             | span style= |             |
|             |             |             | "font-style |             |
|             |             |             | :italic">p< |             |
|             |             |             | /span><sub> |             |
|             |             |             | 0</sub></td |             |
|             |             |             | >           |             |
|             |             |             | </tr>       |             |
|             |             |             | <tr class=" |             |
|             |             |             | even">      |             |
|             |             |             | <td style=" |             |
|             |             |             | text-align: |             |
|             |             |             |  center;">< |             |
|             |             |             | /td>        |             |
|             |             |             | </tr>       |             |
|             |             |             | <tr class=" |             |
|             |             |             | odd">       |             |
|             |             |             | <td style=" |             |
|             |             |             | text-align: |             |
|             |             |             |  center;">< |             |
|             |             |             | span style= |             |
|             |             |             | "font-style |             |
|             |             |             | :italic">K< |             |
|             |             |             | /span> − <s |             |
|             |             |             | pan style=" |             |
|             |             |             | font-style: |             |
|             |             |             | italic">p</ |             |
|             |             |             | span><sub>0 |             |
|             |             |             | </sub></td> |             |
|             |             |             | </tr>       |             |
|             |             |             | </tbody>    |             |
|             |             |             | </table></t |             |
|             |             |             | d>          |             |
|             |             |             | <td> </td>  |             |
|             |             |             | <td>⎞<br /> |             |
|             |             |             | ⎟<br />     |             |
|             |             |             | ⎟<br />     |             |
|             |             |             | ⎠</td>      |             |
|             |             |             | </tr>       |             |
|             |             |             | </tbody>    |             |
|             |             |             | </table>    |             |
+-------------+-------------+-------------+-------------+-------------+

Finally, we substitute this value of [C]{style="font-style:italic"}~1~
into the general solution, which yields:

+-----------------------+-----------------------+-----------------------+
| [f]{style="font-style |   ------------------- |                       |
| :italic"}([t]{style=" | --------------------- |                       |
| font-style:italic"})  | --------------------- |                       |
| =                     | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | -----                 |                       |
|                       |                       |                       |
|                       |  [K]{style="font-styl |                       |
|                       | e:italic"} [p]{style= |                       |
|                       | "font-style:italic"}~ |                       |
|                       | 0~ exp([r]{style="fon |                       |
|                       | t-style:italic"} [t]{ |                       |
|                       | style="font-style:ita |                       |
|                       | lic"})                |                       |
|                       |    [K]{style="font-st |                       |
|                       | yle:italic"} + [p]{st |                       |
|                       | yle="font-style:itali |                       |
|                       | c"}~0~ exp([r]{style= |                       |
|                       | "font-style:italic"}  |                       |
|                       | [t]{style="font-style |                       |
|                       | :italic"}) − [p]{styl |                       |
|                       | e="font-style:italic" |                       |
|                       | }~0~                  |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | -----                 |                       |
+-----------------------+-----------------------+-----------------------+

This function is called the [logistic growth
curve]{style="font-weight:bold"}; see
[[https://modsimpy.com/logistic]{style="font-family:monospace"}](https://modsimpy.com/logistic).
In the context of growth models, the logistic function is often written,
equivalently,

+-----------------------+-----------------------+-----------------------+
| [f]{style="font-style |   ------------------- |                       |
| :italic"}([t]{style=" | --------------------- |                       |
| font-style:italic"})  | --------------------- |                       |
| =                     | -------------         |                       |
|                       |                       |                       |
|                       |    [K]{style="font-st |                       |
|                       | yle:italic"}          |                       |
|                       |    1 + [A]{style="fon |                       |
|                       | t-style:italic"} exp( |                       |
|                       | −[rt]{style="font-sty |                       |
|                       | le:italic"})          |                       |
|                       |   ------------------- |                       |
|                       | --------------------- |                       |
|                       | --------------------- |                       |
|                       | -------------         |                       |
+-----------------------+-----------------------+-----------------------+

where [A]{style="font-style:italic"} = ([K]{style="font-style:italic"} −
[p]{style="font-style:italic"}~0~) / [p]{style="font-style:italic"}~0~.

If you would like to see this differential equation solved by hand, you
might like this video:
[[https://modsimpy.com/khan2]{style="font-family:monospace"}](https://modsimpy.com/khan2)
[]{#hevea_default270} []{#hevea_default271}

