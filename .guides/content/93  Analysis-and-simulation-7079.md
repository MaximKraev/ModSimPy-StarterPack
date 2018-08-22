9.3  Analysis and simulation {#sec55 .section}
----------------------------

Once you have designed a model, there are generally two ways to proceed:
simulation and analysis. Simulation often comes in the form of a
computer program that models changes in a system over time, like births
and deaths, or bikes moving from place to place. Analysis often comes in
the form of algebra; that is, symbolic manipulation using mathematical
notation.

[]{#hevea_default248} []{#hevea_default249} []{#hevea_default250}

Analysis and simulation have different capabilities and limitations.
Simulation is generally more versatile; it is easy to add and remove
parts of a program and test many versions of a model, as we have done in
the previous examples.

But there are several things we can do with analysis that are harder or
impossible with simulations:

-   With analysis we can sometimes compute, exactly and efficiently, a
    value that we could only approximate, less efficiently, with
    simulation. For example, in Figure [7.2](#chap03-fig05), we can see
    that net growth goes to zero near 14 billion, and we could estimate
    carrying capacity using a numerical search algorithm (more about
    that later). But with the analysis in Section [7.2](#equilibrium),
    we get the general result that [K]{style="font-style:italic"}=−α/β.
-   Analysis often provides "computational shortcuts\", that is, the
    ability to jump forward in time to compute the state of a system
    many time steps in the future without computing the intervening
    states.

    []{#hevea_default251}

-   We can use analysis to state and prove generalizations about models;
    for example, we might prove that certain results will always or
    never occur. With simulations, we can show examples and sometimes
    find counterexamples, but it is hard to write proofs.

    []{#hevea_default252}

-   Analysis can provide insight into models and the systems they
    describe; for example, sometimes we can identify regimes of
    qualitatively different behavior and key parameters that control
    those behaviors.

    []{#hevea_default253}

When people see what analysis can do, they sometimes get drunk with
power, and imagine that it gives them a special ability to see past the
veil of the material world and discern the laws of mathematics that
govern the universe. When they analyze a model of a physical system,
they talk about "the math behind it\" as if our world is the mere shadow
of a world of ideal mathematical entities^[2](#note4){#text4}^.

[]{#hevea_default254}

This is, of course, nonsense. Mathematical notation is a language
designed by humans for a purpose, specifically to facilitate symbolic
manipulations like algebra. Similarly, programming languages are
designed for a purpose, specifically to represent computational ideas
and run programs.

[]{#hevea_default255} []{#hevea_default256}

Each of these languages is good for the purposes it was designed for and
less good for other purposes. But they are often complementary, and one
of the goals of this book is to show how they can be used together.

