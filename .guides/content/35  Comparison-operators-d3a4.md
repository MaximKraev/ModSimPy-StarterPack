3.5  Comparison operators {#sec27 .section}
-------------------------

The version of `bike_to_olin` in the previous section uses the equals
operator, `==`, which compares two values and returns `True` if they are
equal and `False` otherwise.

It is easy to confuse the equals operators with the assignment operator,
`=`, which assigns a value to a variable. For example, the following
statement creates a variable, `x`, if it doesn't already exist, and
gives it the value `5`.

[]{#hevea_default129} []{#hevea_default130} []{#hevea_default131}

x = 5

On the other hand, the following statement checks whether `x` is `5` and
returns `True` or `False`. It does not create `x` or change its value.

x == 5

You can use the equals operator in an `if` statement, like this:

[]{#hevea_default132} []{#hevea_default133}

if x == 5: print('yes, x is 5')

If you make a mistake and use `=` in an `if` statement, like this:

if x = 5: print('yes, x is 5')

That's a [syntax error]{style="font-weight:bold"}, which means that the
structure of the program is invalid. Python will print an error message
and the program won't run.

[]{#hevea_default134} []{#hevea_default135}

The equals operator is one of the [comparison
operators]{style="font-weight:bold"}. The others are:

[]{#hevea_default136} []{#hevea_default137}

  --------------------------------------- ------------------------------------
  [Operation]{style="font-weight:bold"}    [Symbol]{style="font-weight:bold"}
  Less than                                               `<`
  Greater than                                            `>`
  Less than or equal                                      `<=`
  Greater than or equal                                   `>=`
  Equal                                                   `==`
  Not equal                                               `!=`
  --------------------------------------- ------------------------------------

