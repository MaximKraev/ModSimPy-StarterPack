17.3  Data {#sec104 .section}
----------

To develop and test the model, I use data from Pacini and
Bergman^[2](#note11){#text11}^. The dataset is in a file in the
repository for this book, which we can read into a `DataFrame`:

[]{#hevea_default420} []{#hevea_default421}

data = pd.read\_csv('data/glucose\_insulin.csv', index\_col='time')

`data` has two columns: `glucose` is the concentration of blood glucose
in /; `insulin` is concentration of insulin in the blood in U (a medical
"unit\", denoted U, is an amount defined by convention in context). The
index is time in .

[]{#hevea_default422}

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy025.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------
>   Figure 17.1: Glucose and insulin concentrations measured by FSIGT.
>   --------------------------------------------------------------------
> :::
>
> []{#chap08-fig01}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [17.1](#chap08-fig01) shows glucose and insulin concentrations
over 182 for a subject with normal insulin production and sensitivity.

