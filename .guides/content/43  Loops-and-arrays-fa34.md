4.3  Loops and arrays {#sec32 .section}
---------------------

[]{#array}

In Section [2.6](#forloop), we saw a loop like this:

for i in range(4): bike\_to\_wellesley()

`range(4)` creates a sequence of numbers from 0 to 3. Each time through
the loop, the next number in the sequence gets assigned to the loop
variable, `i`.

[]{#hevea_default147} []{#hevea_default148} []{#hevea_default149}

`range` only works with integers; to get a sequence of non-integer
values, we can use `linspace`, which is defined in the `modsim` library:

p1\_array = linspace(0, 1, 5)

The arguments indicate where the sequence should start and stop, and how
many elements it should contain. In this example, the sequence contains
`5` equally-spaced numbers, starting at `0` and ending at `1`.

[]{#hevea_default150} []{#hevea_default151} []{#hevea_default152}

The result is a NumPy [array]{style="font-weight:bold"}, which is a new
kind of object we have not seen before. An array is a container for a
sequence of numbers.

We can use an array in a `for` loop like this:

for p1 in p1\_array: print(p1)

When this loop runs, it

1.  Gets the first value from the array and assigns it to `p1`.
2.  Runs the body of the loop, which prints `p1`.
3.  Gets the next value from the array and assigns it to `p1`.
4.  Runs the body of the loop, which prints `p1`.

And so on, until it gets to the end of the array. The result is:

0.0 0.25 0.5 0.75 1.0

This will come in handy in the next section.

