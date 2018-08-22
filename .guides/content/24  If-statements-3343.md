2.4  If statements {#sec17 .section}
------------------

The `modsim` library provides a function called `flip` that takes as an
argument a probability between 0 and 1:

flip(0.7)

The result is one of two values: `True` with probability 0.7 or `False`
with probability 0.3. If you run this function 100 times, you should get
`True` about 70 times and `False` about 30 times. But the results are
random, so they might differ from these expectations.
[]{#hevea_default79} []{#hevea_default80} []{#hevea_default81}

`True` and `False` are special values defined by Python. Note that they
are not strings. There is a difference between `True`, which is a
special value, and [`'True'`]{style="color:#B20000"}, which is a string.
[]{#hevea_default82} []{#hevea_default83}

`True` and `False` are called [boolean]{style="font-weight:bold"} values
because they are related to Boolean algebra
([[https://modsimpy.com/boolean]{style="font-family:monospace"}](https://modsimpy.com/boolean)).

We can use boolean values to control the behavior of the program, using
an [if statement]{style="font-weight:bold"}: []{#hevea_default84}
[]{#hevea_default85}

if flip(0.5): print('heads')

If the result from `flip` is `True`, the program displays the string
[`'heads'`]{style="color:#B20000"}. Otherwise it does nothing.

The punctuation for if statements is similar to the punctuation for
function definitions: the first line has to end with a colon, and the
lines inside the if statement have to be indented. []{#hevea_default86}
[]{#hevea_default87}

Optionally, you can add an [else clause]{style="font-weight:bold"} to
indicate what should happen if the result is `False`:

if flip(0.5): print('heads') else: print('tails')

Now we can use `flip` to simulate the arrival of students who want to
borrow a bike. Suppose students arrive at the Olin station every 2
minutes, on average. In that case, the chance of an arrival during any
one-minute period is 50%, and we can simulate it like this:

if flip(0.5): bike\_to\_wellesley()

If students arrive at the Wellesley station every 3 minutes, on average,
the chance of an arrival during any one-minute period is 33%, and we can
simulate it like this:

if flip(0.33): bike\_to\_olin()

We can combine these snippets into a function that simulates a [time
step]{style="font-weight:bold"}, which is an interval of time, in this
case one minute:

[]{#hevea_default88}

def step(): if flip(0.5): bike\_to\_wellesley()

if flip(0.33): bike\_to\_olin()

Then we can simulate a time step like this:

step()

