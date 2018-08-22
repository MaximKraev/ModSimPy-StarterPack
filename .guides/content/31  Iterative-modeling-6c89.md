3.1  Iterative modeling {#sec23 .section}
-----------------------

The model we have so far is simple, but it is based on unrealistic
assumptions. Before you go on, take a minute to review the model from
the previous chapters. What assumptions is it based on? Make a list of
ways this model might be unrealistic; that is, what are the differences
between the model and the real world?

Here are some of the differences on my list:

-   In the model, a student is equally likely to arrive during any
    one-minute period. In reality, this probability varies depending on
    time of day, day of the week, etc.

    []{#hevea_default116}

-   The model does not account for travel time from one bike station to
    another.
-   The model does not check whether a bike is available, so it's
    possible for the number of bikes to be negative (as you might have
    noticed in some of your simulations).

Some of these modeling decisions are better than others. For example,
the first assumption might be reasonable if we simulate the system for a
short period of time, like one hour.

The second assumption is not very realistic, but it might not affect the
results very much, depending on what we use the model for.

[]{#hevea_default117}

On the other hand, the third assumption seems problematic, and it is
relatively easy to fix. In Section [3.4](#negativebikes), we will.

This process, starting with a simple model, identifying the most
important problems, and making gradual improvements, is called
[iterative modeling]{style="font-weight:bold"}.

[]{#hevea_default118}

For any physical system, there are many possible models, based on
different assumptions and simplifications. It often takes several
iterations to develop a model that is good enough for the intended
purpose, but no more complicated than necessary.

