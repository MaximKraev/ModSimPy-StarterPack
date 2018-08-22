4.5  Incremental development {#sec34 .section}
----------------------------

When you start writing programs that are more than a few lines, you
might find yourself spending more and more time debugging. The more code
you write before you start debugging, the harder it is to find the
problem.

[]{#hevea_default158} []{#hevea_default159}

[Incremental development]{style="font-weight:bold"} is a way of
programming that tries to minimize the pain of debugging. The
fundamental steps are:

1.  Always start with a working program. If you have an example from a
    book, or a program you wrote that is similar to what you are working
    on, start with that. Otherwise, start with something you *know* is
    correct, like [x=5]{style="font-family:monospace"}. Run the program
    and confirm that it does what you expect.
2.  Make one small, testable change at a time. A "testable" change is
    one that displays something or has some other effect you can check.
    Ideally, you should know what the correct answer is, or be able to
    check it by performing another computation.

    []{#hevea_default160}

3.  Run the program and see if the change worked. If so, go back to
    Step 2. If not, you will have to do some debugging, but if the
    change you made was small, it shouldn't take long to find the
    problem.

When this process works, your changes usually work the first time, or if
they don't, the problem is obvious. In practice, there are two problems
with incremental development:

-   Sometimes you have to write extra code to generate visible output
    that you can check. This extra code is called
    [scaffolding]{style="font-weight:bold"} because you use it to build
    the program and then remove it when you are done. That might seem
    like a waste, but time you spend on scaffolding is almost always
    time you save on debugging.

    []{#hevea_default161}

-   When you are getting started, it might not be obvious how to choose
    the steps that get from [x=5]{style="font-family:monospace"} to the
    program you are trying to write. You will see more examples of this
    process as we go along, and you will get better with experience.

If you find yourself writing more than a few lines of code before you
start testing, and you are spending a lot of time debugging, try
incremental development.

Before you go on, you might want to read the notebook for this chapter,
`chap04.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

