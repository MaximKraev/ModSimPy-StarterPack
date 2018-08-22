2.2  Defining functions {#sec15 .section}
-----------------------

So far we have used functions defined in `modsim` and other libraries.
Now we're going to define our own functions.

[]{#hevea_default67} []{#hevea_default68}

When you are developing code in Jupyter, it is often efficient to write
a few lines of code, test them to confirm they do what you intend, and
then use them to define a new function. For example, these lines move a
bike from Olin to Wellesley:

bikeshare.olin -= 1 bikeshare.wellesley += 1

Rather than repeat them every time a bike moves, we can define a new
function:

def bike\_to\_wellesley(): bikeshare.olin -= 1 bikeshare.wellesley += 1

`def` is a special word in Python that indicates we are defining a new
function. The name of the function is `bike_to_wellesley`. The empty
parentheses indicate that this function requires no additional
information when it runs. The colon indicates the beginning of an
indented [code block]{style="font-weight:bold"}. []{#hevea_default69}
[]{#hevea_default70} []{#hevea_default71} []{#hevea_default72}

The next two lines are the [body]{style="font-weight:bold"} of the
function. They have to be indented; by convention, the indentation is 4
spaces.

When you define a function, it has no immediate effect. The body of the
function doesn't run until you [call]{style="font-weight:bold"} the
function. Here's how to call this function: []{#hevea_default73}

bike\_to\_wellesley()

When you call the function, it runs the statements in the body, which
update the variables of the [bikeshare]{style="font-family:monospace"}
object; you can check by displaying or plotting the new state.

When you call a function, you have to include the parentheses. If you
leave them out, like this: []{#hevea_default74} []{#hevea_default75}

bike\_to\_wellesley

Python looks up the name of the function and displays:

\<function \_\_main\_\_.bike\_to\_wellesley\>

This result indicates that `bike_to_wellesley` is a function. You don't
have to know what `__main__` means, but if you see something like this,
it probably means that you looked up a function but you didn't actually
call it. So don't forget the parentheses.

Just like `bike_to_wellesley`, we can define a function that moves a
bike from Wellesley to Olin:

def bike\_to\_olin(): bikeshare.wellesley -= 1 bikeshare.olin += 1

And call it like this:

bike\_to\_olin()

One benefit of defining functions is that you avoid repeating chunks of
code, which makes programs smaller. Another benefit is that the name you
give the function documents what it does, which makes programs more
readable.

