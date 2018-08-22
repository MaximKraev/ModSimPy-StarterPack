2.6  For loops {#sec19 .section}
--------------

[]{#forloop}

At some point you will get sick of running cells over and over.
Fortunately, there is an easy way to repeat a chunk of code, the [for
loop]{style="font-weight:bold"}. Here's an example: []{#hevea_default91}
[]{#hevea_default92}

for i in range(4): bike\_to\_wellesley()

The punctuation here should look familiar; the first line ends with a
colon, and the lines inside the for loop are indented. The other
elements of the for loop are: []{#hevea_default93}

-   The words `for` and `in` are special words we have to use in a for
    loop.
-   `range` is a Python function we're using here to control the number
    of times the loop runs. []{#hevea_default94}
-   `i` is a [loop variable]{style="font-weight:bold"} that gets created
    when the for loop runs. []{#hevea_default95}

In this example we don't actually use `i`; we will see examples later
where we use the loop variable inside the loop.

When this loop runs, it runs the statements inside the loop four times,
which moves one bike at a time from Olin to Wellesley.

