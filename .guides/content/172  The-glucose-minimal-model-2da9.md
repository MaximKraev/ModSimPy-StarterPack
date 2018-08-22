17.2  The glucose minimal model {#sec103 .section}
-------------------------------

The "minimal model\" was proposed by Bergman, Ider, Bowden, and
Cobelli^[1](#note10){#text10}^. It consists of two parts: the glucose
model and the insulin model. I will present an implementation of the
glucose model; as a case study, you will have the chance to implement
the insulin model.

[]{#hevea_default415}

The original model was developed in the 1970s; since then, many
variations and extensions have been proposed. Bergman's comments on the
development of the model provide insight into their process:

> We applied the principle of Occam's Razor, i.e. by asking what was the
> simplest model based upon known physiology that could account for the
> insulin-glucose relationship revealed in the data. Such a model must
> be simple enough to account totally for the measured glucose (given
> the insulin input), yet it must be possible, using mathematical
> techniques, to estimate all the characteristic parameters of the model
> from a single data set (thus avoiding unverifiable assumptions).

The most useful models are the ones that achieve this balance: including
enough realism to capture the essential features of the system without
too much complexity to be practical. In this case the practical limit is
the ability to estimate the parameters of the model using data, and to
interpret the parameters meaningfully.

[]{#hevea_default416}

Bergman discusses the features he and his colleagues thought were
essential:

> \(1) Glucose, once elevated by injection, returns to basal level due to
> two effects: the effect of glucose itself to normalize its own
> concentration \[\...\] as well as the catalytic effect of insulin to
> allow glucose to self-normalize (2) Also, we discovered that the effect
> of insulin on net glucose disappearance must be sluggish --- that is,
> that insulin acts slowly because insulin must first move from plasma to
> a remote compartment \[\...\] to exert its action on glucose disposal.

To paraphrase the second point, the effect of insulin on glucose
disposal, as seen in the data, happens more slowly than we would expect
if it depended primarily on the the concentration of insulin in the
blood. Bergman's group hypothesized that insulin must move, relatively
slowly, from the blood to a "remote compartment\" where it has its
effect.

[]{#hevea_default417}

At the time, the remote compartment was a modeling abstraction that
might, or might not, reflect something physical. Later, according to
Bergman, it was "shown to be interstitial fluid\", that is, the fluid
that surrounds tissue cells. In the history of mathematical modeling, it
is common for hypothetical entities, added to models to achieve
particular effects, to be found later to correspond to physical
entities.

[]{#hevea_default418}

The glucose model consists of two differential equations:

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  = −[k]{s | ⎡\        | [G]{style | ⎤\        | − [X]{sty |
| --------- | tyle="fon | ⎣         | ="font-st | ⎦         | le="font- |
| --------- | t-style:i |           | yle:itali |           | style:ita |
| --------  | talic"}~1 |           | c"}([t]{s |           | lic"}([t] |
|    [dG]{s | ~         |           | tyle="fon |           | {style="f |
| tyle="fon |           |           | t-style:i |           | ont-style |
| t-style:i |           |           | talic"})  |           | :italic"} |
| talic"}   |           |           | − [G]{sty |           | ) [G]{sty |
|    [dt]{s |           |           | le="font- |           | le="font- |
| tyle="fon |           |           | style:ita |           | style:ita |
| t-style:i |           |           | lic"}~[b] |           | lic"}([t] |
| talic"}   |           |           | {style="f |           | {style="f |
|   ------- |           |           | ont-style |           | ont-style |
| --------- |           |           | :italic"} |           | :italic"} |
| --------- |           |           | ~         |           | )         |
| --------  |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

+-----------+-----------+-----------+-----------+-----------+-----------+
|   ------- |  = [k]{st | ⎡\        | [I]{style | ⎤\        | − [k]{sty |
| --------- | yle="font | ⎣         | ="font-st | ⎦         | le="font- |
| --------- | -style:it |           | yle:itali |           | style:ita |
| --------  | alic"}~3~ |           | c"}([t]{s |           | lic"}~2~  |
|    [dX]{s |           |           | tyle="fon |           | [X]{style |
| tyle="fon |           |           | t-style:i |           | ="font-st |
| t-style:i |           |           | talic"})  |           | yle:itali |
| talic"}   |           |           | − [I]{sty |           | c"}([t]{s |
|    [dt]{s |           |           | le="font- |           | tyle="fon |
| tyle="fon |           |           | style:ita |           | t-style:i |
| t-style:i |           |           | lic"}~[b] |           | talic"})  |
| talic"}   |           |           | {style="f |           |           |
|   ------- |           |           | ont-style |           |           |
| --------- |           |           | :italic"} |           |           |
| --------- |           |           | ~         |           |           |
| --------  |           |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+

where

-   [G]{style="font-style:italic"} is the concentration of blood glucose
    as a function of time and
    [dG]{style="font-style:italic"}/[dt]{style="font-style:italic"} is
    its rate of change.
-   [I]{style="font-style:italic"} is the concentration of insulin in
    the blood as a function of time, which is taken as an input into the
    model, based on measurements.
-   [G]{style="font-style:italic"}~[b]{style="font-style:italic"}~ is
    the basal concentration of blood glucose and
    [I]{style="font-style:italic"}~[b]{style="font-style:italic"}~ is
    the basal concentration of blood insulin, that is, the
    concentrations at equilibrium. Both are constants estimated from
    measurements at the beginning or end of the test.
-   [X]{style="font-style:italic"} is the concentration of insulin in
    the tissue fluid as a function of time, and
    [dX]{style="font-style:italic"}/[dt]{style="font-style:italic"} is
    its rate of change.
-   [k]{style="font-style:italic"}~1~,
    [k]{style="font-style:italic"}~2~, and
    [k]{style="font-style:italic"}~3~ are positive-valued parameters
    that control the rates of appearance and disappearance for glucose
    and insulin.

We can interpret the terms in the equations one by one:

-   −[k]{style="font-style:italic"}~1~ \[
    [G]{style="font-style:italic"}([t]{style="font-style:italic"}) −
    [G]{style="font-style:italic"}~[b]{style="font-style:italic"}~ \] is
    the rate of glucose disappearance due to the effect of glucose
    itself. When
    [G]{style="font-style:italic"}([t]{style="font-style:italic"}) is
    above basal level,
    [G]{style="font-style:italic"}~[b]{style="font-style:italic"}~, this
    term is negative; when
    [G]{style="font-style:italic"}([t]{style="font-style:italic"}) is
    below basal level this term is positive. So in the absence of
    insulin, this term tends to restore blood glucose to basal level.
-   −[X]{style="font-style:italic"}([t]{style="font-style:italic"})
    [G]{style="font-style:italic"}([t]{style="font-style:italic"})
    models the interaction of glucose and insulin in tissue fluid, so
    the rate increases as either [X]{style="font-style:italic"} or
    [G]{style="font-style:italic"} increases. This term does not require
    a rate parameter because the units of [X]{style="font-style:italic"}
    are unspecified; we can consider [X]{style="font-style:italic"} to
    be in whatever units would make the parameter of this term 1.
-   [k]{style="font-style:italic"}~3~ \[
    [I]{style="font-style:italic"}([t]{style="font-style:italic"}) −
    [I]{style="font-style:italic"}~[b]{style="font-style:italic"}~ \] is
    the rate at which insulin diffuses between blood and tissue fluid.
    When [I]{style="font-style:italic"}([t]{style="font-style:italic"})
    is above basal level, insulin diffuses from the blood into the
    tissue fluid. When
    [I]{style="font-style:italic"}([t]{style="font-style:italic"}) is
    below basal level, insulin diffuses from tissue to the blood.
-   −[k]{style="font-style:italic"}~2~
    [X]{style="font-style:italic"}([t]{style="font-style:italic"}) is
    the rate of insulin disappearance in tissue fluid as it is consumed
    or broken down.

The initial state of the model is [X]{style="font-style:italic"}(0) =
[I]{style="font-style:italic"}~[b]{style="font-style:italic"}~ and
[G]{style="font-style:italic"}(0) = [G]{style="font-style:italic"}~0~,
where [G]{style="font-style:italic"}~0~ is a constant that represents
the concentration of blood sugar immediately after the injection. In
theory we could estimate [G]{style="font-style:italic"}~0~ based on
measurements, but in practice it takes time for the injected glucose to
spread through the blood volume. Since [G]{style="font-style:italic"}~0~
is not measurable, it is treated as a [free
parameter]{style="font-weight:bold"} of the model, which means that we
are free to choose it to fit the data.

[]{#hevea_default419}

