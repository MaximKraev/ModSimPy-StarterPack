10.3  One queue or two? {#sec64 .section}
-----------------------

This chapter presents two cases studies that let you practice what you
have learned so far. The first case study is related to [queueing
theory]{style="font-weight:bold"}, which is the study of systems that
involve waiting in lines, also known as "queues\".

Suppose you are designing the checkout area for a new store. There is
enough room in the store for two checkout counters and a waiting area
for customers. You can make two lines, one for each counter, or one line
that feeds both counters.

In theory, you might expect a single line to be better, but it has some
practical drawbacks: in order to maintain a single line, you might have
to install barriers, and customers might be put off by what seems to be
a longer line, even if it moves faster.

So you'd like to check whether the single line is really better and by
how much. Simulation can help answer this question.

> ::: {.center}
>
> ------------------------------------------------------------------------
> :::
>
> ::: {.center}
> ![](ModSimPy011.png)
> :::
>
> ::: {.caption}
>   --------------------------------------------------------------------------------------------------------------
>   Figure 10.2: One queue, one server (left), one queue, two servers (middle), two queues, two servers (right).
>   --------------------------------------------------------------------------------------------------------------
> :::
>
> []{#fig-queue}
>
> ::: {.center}
>
> ------------------------------------------------------------------------
> :::

Figure [10.2](#fig-queue) shows the three scenarios we'll consider. As
we did in the bike share model, we'll assume that a customer is equally
likely to arrive during any time step. I'll denote this probability
using the Greek letter lambda, λ, or the variable name `lam`. The value
of λ probably varies from day to day, so we'll have to consider a range
of possibilities.

Based on data from other stores, you know that it takes 5 minutes for a
customer to check out, on average. But checkout times are variable: most
customers take less than 5 minutes, but some take substantially more. A
simple way to model this variability is to assume that when a customer
is checking out, always have the same probability of finishing during
the next time step, regardless of how long they have been checking out.
I'll denote this probability using the Greek letter mu, µ, or the
variable name `mu`.

If we choose µ=1/5 per minute, the average time for each checkout will
be 5 minutes, which is consistent with the data. Most people takes less
than 5 minutes, but a few take substantially longer, which is probably
not a bad model of the distribution in real stores.

Now we're ready to get started. In the repository for this book, you'll
find a notebook called `queue.ipynb` that contains some code to get you
started and instructions.

As always, you should practice incremental development: write no more
than one or two lines of code a time, and test as you go!

