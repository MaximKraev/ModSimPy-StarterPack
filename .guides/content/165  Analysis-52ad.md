16.5  Analysis {#sec100 .section}
--------------

Simulating Newton's law of cooling is almost silly, because we can solve
the differential equation analytically. If

+-----------------------------------+-----------------------------------+
|   ------------------------------- |  = −[r]{style="font-style:italic" |
| --                                | } ([T]{style="font-style:italic"} |
|    [dT]{style="font-style:italic" |  − [T]{style="font-style:italic"} |
| }                                 | ~[env]{style="font-style:italic"} |
|    [dt]{style="font-style:italic" | ~)                                |
| }                                 |                                   |
|   ------------------------------- |                                   |
| --                                |                                   |
+-----------------------------------+-----------------------------------+

the general solution is

+-----------------------+-----------------------+-----------------------+
| [T]{style="font-style |   ---- -------------- |  = [C]{style="font-st |
| :italic"}             | ------------------- - | yle:italic"}~1~ exp(− |
|                       | ---                   | [r]{style="font-style |
|                       |   ⎛\   [t]{style="fon | :italic"} [t]{style=" |
|                       | t-style:italic"}    ⎞ | font-style:italic"})  |
|                       | \                     | + [T]{style="font-sty |
|                       |   ⎝                   | le:italic"}~[env]{sty |
|                       |                     ⎠ | le="font-style:italic |
|                       |                       | "}~                   |
|                       |   ---- -------------- |                       |
|                       | ------------------- - |                       |
|                       | ---                   |                       |
+-----------------------+-----------------------+-----------------------+

and the particular solution where [T]{style="font-style:italic"}(0) =
[T]{style="font-style:italic"}~[init]{style="font-style:italic"}~ is

  --------------------------------------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------------- ---- ----------------------------------------------------------------------
  [T]{style="font-style:italic"}~[env]{style="font-style:italic"}~ +    ⎛\   − [T]{style="font-style:italic"}~[env]{style="font-style:italic"}~ + [T]{style="font-style:italic"}~[init]{style="font-style:italic"}~   ⎞\   exp(−[r]{style="font-style:italic"} [t]{style="font-style:italic"}) 
                                                                        ⎝                                                                                                                                             ⎠    

  --------------------------------------------------------------------- ---- ---------------------------------------------------------------------------------------------------------------------------------------- ---- ----------------------------------------------------------------------

You can see how I got this solution using SymPy in `chap16sympy.ipynb`
in the repository for this book. If you would like to see it done by
hand, you can watch this video:
[[https://modsimpy.com/khan3]{style="font-family:monospace"}](https://modsimpy.com/khan3).

[]{#hevea_default404} []{#hevea_default405}

Now we can use the observed data to estimate the parameter
[r]{style="font-style:italic"}. If we observe
[T]{style="font-style:italic"}([t]{style="font-style:italic"}~[end]{style="font-style:italic"}~)
= [T]{style="font-style:italic"}~[end]{style="font-style:italic"}~, we
can plug
[t]{style="font-style:italic"}~[end]{style="font-style:italic"}~ and
[T]{style="font-style:italic"}~[end]{style="font-style:italic"}~ into
the particular solution and solve for [r]{style="font-style:italic"}.
The result is:

+-------------+-------------+-------------+-------------+-------------+
| [r]{style=" |   --------- |  log        | <table>     |             |
| font-style: | ----------- |             | <colgroup>  |             |
| italic"} =  | ----------- |             | <col style= |             |
|             | ----------- |             | "width: 25% |             |
|             | ----------- |             | " />        |             |
|             | ----------- |             | <col style= |             |
|             | --          |             | "width: 25% |             |
|             |             |             | " />        |             |
|             |             |             | <col style= |             |
|             |             |             | "width: 25% |             |
|             |  1          |             | " />        |             |
|             |    [t]{styl |             | <col style= |             |
|             | e="font-sty |             | "width: 25% |             |
|             | le:italic"} |             | " />        |             |
|             | ~[end]{styl |             | </colgroup> |             |
|             | e="font-sty |             | <tbody>     |             |
|             | le:italic"} |             | <tr class=" |             |
|             | ~           |             | odd">       |             |
|             |   --------- |             | <td>⎛<br /> |             |
|             | ----------- |             | ⎜<br />     |             |
|             | ----------- |             | ⎜<br />     |             |
|             | ----------- |             | ⎝</td>      |             |
|             | ----------- |             | <td><table> |             |
|             | ----------- |             | <tbody>     |             |
|             | --          |             | <tr class=" |             |
|             |             |             | odd">       |             |
|             |             |             | <td style=" |             |
|             |             |             | text-align: |             |
|             |             |             |  center;">< |             |
|             |             |             | span style= |             |
|             |             |             | "font-style |             |
|             |             |             | :italic">T< |             |
|             |             |             | /span><sub> |             |
|             |             |             | <span style |             |
|             |             |             | ="font-styl |             |
|             |             |             | e:italic">i |             |
|             |             |             | nit</span>< |             |
|             |             |             | /sub> − <sp |             |
|             |             |             | an style="f |             |
|             |             |             | ont-style:i |             |
|             |             |             | talic">T</s |             |
|             |             |             | pan><sub><s |             |
|             |             |             | pan style=" |             |
|             |             |             | font-style: |             |
|             |             |             | italic">env |             |
|             |             |             | </span></su |             |
|             |             |             | b></td>     |             |
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
|             |             |             | :italic">T< |             |
|             |             |             | /span><sub> |             |
|             |             |             | <span style |             |
|             |             |             | ="font-styl |             |
|             |             |             | e:italic">e |             |
|             |             |             | nd</span></ |             |
|             |             |             | sub> − <spa |             |
|             |             |             | n style="fo |             |
|             |             |             | nt-style:it |             |
|             |             |             | alic">T</sp |             |
|             |             |             | an><sub><sp |             |
|             |             |             | an style="f |             |
|             |             |             | ont-style:i |             |
|             |             |             | talic">env< |             |
|             |             |             | /span></sub |             |
|             |             |             | ></td>      |             |
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

Plugging in
[t]{style="font-style:italic"}~[end]{style="font-style:italic"}~=30 and
[T]{style="font-style:italic"}~[end]{style="font-style:italic"}~=70 (and
again with
[T]{style="font-style:italic"}~[init]{style="font-style:italic"}~=90 and
[T]{style="font-style:italic"}~[env]{style="font-style:italic"}~=22),
the estimate for [r]{style="font-style:italic"} is 0.0116.

We can use the following function to compute the time series:

[]{#hevea_default406}

def run\_analysis(system): unpack(system)

T\_init = init.T ts = linrange(t\_0, t\_end, dt, endpoint=True)

T\_array = T\_env + (T\_init - T\_env) \* exp(-r \* ts)

results = TimeFrame(T\_array, index=ts, columns=\['T'\]) system.T\_final
= get\_last\_value(results.T)

return results

This function is similar to `run_simulation`; it takes a `System` as a
parameter and returns a `TimeFrame` as a result.

Because `linrange` returns a NumPy array, `T_array` is also a NumPy
array. To be consistent with `run_simulation`, we have to put it into a
`TimeFrame`.

We can run it like this: []{#hevea_default407}

r\_coffee2 = 0.0116 coffee2 = make\_system(T\_init=90, r=r\_coffee2,
volume=300, t\_end=30) results = run\_analysis(coffee2)

The final temperature is 70, as it should be. In fact, the results are
identical to what we got by simulation, with a small difference due to
round off.

Before you go on, you might want to read the notebook for this chapter,
`chap16.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

