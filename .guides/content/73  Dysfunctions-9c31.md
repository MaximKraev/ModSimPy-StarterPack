7.3  Dysfunctions {#sec48 .section}
-----------------

When people learn about functions, there are a few things they often
find confusing. In this section I present and explain some common
problems.

As an example, suppose you want a function that takes as a parameter
`System` object with variables `alpha` and `beta`, and computes the
carrying capacity, `-alpha/beta`. Here's a good solution:

def carrying\_capacity(system): K = -system.alpha / system.beta return K

sys1 = System(alpha=0.025, beta=-0.0018) pop = carrying\_capacity(sys1)
print(pop)

Now let's see all the ways that can go wrong.

Dysfunction \#1: Not using parameters. In the following version, the
function doesn't take any parameters; when `sys1` appears inside the
function, it refers to the object we create outside the function.

def carrying\_capacity(): K = -sys1.alpha / sys1.beta return K

sys1 = System(alpha=0.025, beta=-0.0018) pop = carrying\_capacity()
print(pop)

This version actually works, but it is not as versatile as it could be.
If there are several `System` objects, this function can only work with
one of them, and only if it is named `sys1`.

Dysfunction \#2: Clobbering the parameters. When people first learn
about parameters, they often write functions like this:

\# WRONG def carrying\_capacity(system): system = System(alpha=0.025,
beta=-0.0018) K = -system.alpha / system.beta return K

sys1 = System(alpha=0.03, beta=-0.002) pop = carrying\_capacity(sys1)
print(pop)

In this example, we have a `System` object named `sys1` that gets passed
as an argument to `carrying_capacity`. But when the function runs, it
ignores the argument and immediately replaces it with a new `System`
object. As a result, this function always returns the same value, no
matter what argument is passed.

When you write a function, you generally don't know what the values of
the parameters will be. Your job is to write a function that works for
any valid values. If you assign your own values to the parameters, you
defeat the whole purpose of functions.

Dysfunction \#3: No return value. Here's a version that computes the
value of `K` but doesn't return it.

\# WRONG def carrying\_capacity(system): K = -system.alpha / system.beta

sys1 = System(alpha=0.025, beta=-0.0018) pop = carrying\_capacity(sys1)
print(pop)

A function that doesn't have a return statement always returns a special
value called `None`, so in this example the value of `pop` is `None`. If
you are debugging a program and find that the value of a variable is
`None` when it shouldn't be, a function without a return statement is a
likely cause. []{#hevea_default221}

Dysfunction \#4: Ignoring the return value. Finally, here's a version
where the function is correct, but the way it's used is not.

\# WRONG def carrying\_capacity(system): K = -system.alpha / system.beta
return K

sys1 = System(alpha=0.025, beta=-0.0018) carrying\_capacity(sys1)
print(K)

In this example, `carrying_capacity` runs and returns `K`, but the
return value is dropped.

When you call a function that returns a value, you should do something
with the result. Often you assign it to a variable, as in the previous
examples, but you can also use it as part of an expression. For example,
you could eliminate the temporary variable `pop` like this:

print(carrying\_capacity(sys1))

Or if you had more than one system, you could compute the total carrying
capacity like this:

total = carrying\_capacity(sys1) + carrying\_capacity(sys2)

Before you go on, you might want to read the notebook for this chapter,
`chap07.ipynb`, and work on the exercises. For instructions on
downloading and running the code, see Section [0.4](#code).

