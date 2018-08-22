2.5  Parameters {#sec18 .section}
---------------

The previous version of `step` is fine if the arrival probabilities
never change, but in reality, these probabilities vary over time.

So instead of putting the constant values 0.5 and 0.33 in `step` we can
replace them with [parameters]{style="font-weight:bold"}. Parameters are
variables whose values are set when a function is called.

Here's a version of `step` that takes two parameters, `p1` and `p2`:

[]{#hevea_default89}

def step(p1, p2): if flip(p1): bike\_to\_wellesley()

if flip(p2): bike\_to\_olin()

The values of `p1` and `p2` are not set inside this function; instead,
they are provided when the function is called, like this:

step(0.5, 0.33)

The values you provide when you call the function are called
[arguments]{style="font-weight:bold"}. The arguments, `0.5` and `0.33`,
get assigned to the parameters, `p1` and `p2`, in order. So running this
function has the same effect as:

p1 = 0.5 p2 = 0.33

if flip(p1): bike\_to\_wellesley()

if flip(p2): bike\_to\_olin()

The advantage of using parameters is that you can call the same function
many times, providing different arguments each time. Adding parameters
to a function is called [generalization]{style="font-weight:bold"},
because it makes the function more general, that is, less specific.

[]{#hevea_default90}

