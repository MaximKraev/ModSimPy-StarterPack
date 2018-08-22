3.3  Documentation {#sec25 .section}
------------------

[]{#documentation}

Another problem with the code we have so far is that it contains no
[documentation]{style="font-weight:bold"}. Documentation is text we add
to a program to help other programmers read and understand it. It has no
effect on the program when it runs.

[]{#hevea_default121} []{#hevea_default122} []{#hevea_default123}

There are two forms of documentation,
[docstrings]{style="font-weight:bold"} and
[comments]{style="font-weight:bold"}. A docstring is a string in
triple-quotes that appears at the beginning of a function, like this:

def run\_simulation(state, p1, p2, num\_steps): \"\"\"Simulate the given
number of time steps.

state: State object p1: probability of an Olin-\>Wellesley customer
arrival p2: probability of a Wellesley-\>Olin customer arrival
num\_steps: number of time steps \"\"\" results = TimeSeries() for i in
range(num\_steps): step(state, p1, p2) results\[i\] = state.olin

plot(results, label='Olin')

Docstrings follow a conventional format:

-   The first line is a single sentence that describes what the function
    does.
-   The following lines explain what each of the parameters are.

A function's docstring should include the information someone needs to
know to *use* the function; it should not include details about how the
function works. That's what comments are for.

A comment is a line of text that begins with a hash symbol, `#`. It
usually appears inside a function to explain something that would not be
obvious to someone reading the program.

[]{#hevea_default124} []{#hevea_default125}

For example, here is a version of `bike_to_olin` with a docstring and a
comment.

def bike\_to\_olin(state): \"\"\"Move one bike from Wellesley to Olin.

state: State object \"\"\" \# We decrease one state variable and
increase the \# other, so the total number of bikes is unchanged.
state.wellesley -= 1 state.olin += 1

At this point we have more documentation than code, which is not unusual
for short functions.

