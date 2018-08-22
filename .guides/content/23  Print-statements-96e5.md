2.3  Print statements {#sec16 .section}
---------------------

As you write more complicated programs, it is easy to lose track of what
is going on. One of the most useful tools for debugging is the [print
statement]{style="font-weight:bold"}, which displays text in the Jupyter
notebook. []{#hevea_default76} []{#hevea_default77}

Normally when Jupyter runs the code in a cell, it displays the value of
the last line of code. For example, if you run:

bikeshare.olin bikeshare.wellesley

Jupyter runs both lines of code, but it only displays the value of the
second line. If you want to display more than one value, you can use
print statements:

print(bikeshare.olin) print(bikeshare.wellesley)

`print` is a function, so it takes an argument in parentheses. It can
also take a sequence of arguments separated by commas, like this:

print(bikeshare.olin, bikeshare.wellesley)

In this example, the two values appear on the same line, separated by a
space.

Print statements are also useful for debugging functions. For example,
we can add a print statement to `move_bike`, like this:

def bike\_to\_wellesley(): print('Moving a bike to Wellesley')
bikeshare.olin -= 1 bikeshare.wellesley += 1

Each time we call this version of the function, it displays a message,
which can help us keep track of what the program is doing.

[]{#hevea_default78}

The argument of this `print` is a [string]{style="font-weight:bold"},
which is a sequence of letters and other symbols in quotes.

