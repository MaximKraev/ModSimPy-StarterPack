10.1  Computational tools {#sec62 .section}
-------------------------

In Chapter [1](#chap01) we used Pint to define units and perform
calculations with units:

  --------------------------------------------------------------------------
  meter = UNITS.meter second = UNITS.second a = 9.8 \* meter / second\*\*2
  --------------------------------------------------------------------------

In Chapter [2](#chap02) we defined a `State` object that contains
variables that represent the state of a system, usually changing over
time:

  -----------------------------------------
  bikeshare = State(olin=10, wellesley=2)
  -----------------------------------------

We used update operators like `+=` and `-=` to change state variables.
We used `print` statements to display the values of variables.

We used the `flip` function to simulate random arrivals, and used `if`
statements to check the results.

We learned to define new functions that take parameters:

  --------------------------------------------------------------------------------------------------------------------------------
  def step(p1, p2): [if]{style="color:blue"} flip(p1): bike\_to\_wellesley() [if]{style="color:blue"} flip(p2): bike\_to\_olin()
  --------------------------------------------------------------------------------------------------------------------------------

We used a `for` loop with the `range` function to execute the body of
the loop a specified number of times.

  -------------------------------------------------------
  [for]{style="color:blue"} i in range(4): step(p1, p2)
  -------------------------------------------------------

We learned to create a `TimeSeries` object and use it to store the value
of a state variable as it changes over time:

  ---------------------------------------------------------------------------------------------------------------
  results = TimeSeries() [for]{style="color:blue"} i in range(10): step(0.3, 0.2) results\[i\] = bikeshare.olin
  ---------------------------------------------------------------------------------------------------------------

We used `plot` to plot the results, `decorate` to label the axes, and
`savefig` to save the figure.

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  plot(results, label=[\'Olin\']{style="color:#B20000"}) decorate(xlabel=[\'Time step (min)\']{style="color:#B20000"}, ylabel=[\'Number of bikes\']{style="color:#B20000"}) savefig([\'chap01-fig01.pdf)]{style="color:#B20000"}
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In Chapter [3](#chap03) we used comparison operators to check for
certain conditions and the `return` statement to end the execution of a
function.

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  def bike\_to\_olin(state): [if]{style="color:blue"} state.wellesley == 0: state.wellesley\_empty += 1 [return]{style="color:blue"} state.wellesley -= 1 state.olin += 1
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In Chapter [4](#chap04) we wrote a version of `run_simulation` that uses
a `return` statement to return a value:

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  def run\_simulation(p1, p2, num\_steps): state = State(olin=10, wellesley=2, olin\_empty=0, wellesley\_empty=0) [for]{style="color:blue"} i in range(num\_steps): step(state, p1, p2) [return]{style="color:blue"} state
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This version of `run_simulation` returns the final value of `state`,
which contains metrics we can use to measure the performance of the
system.

We used `linspace` to create a NumPy array of equally spaced values, and
a `for` loop to loop through the array. We used a `SweepSeries` to store
results from a series of simulations, mapping from the value of a
parameter to the value of a resulting metric.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  p1\_array = linspace(0, 1, 11) sweep = SweepSeries() [for]{style="color:blue"} p1 in p1\_array: state = run\_simulation(p1, p2, num\_steps) sweep\[p1\] = state.olin\_empty
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In Chapter [5](#chap05) we used Pandas to read data from a web page and
store the results in a `DataFrame`. We selected a column from the
`DataFrame` to get a `Series`.

In Chapter [6](#chap06) we created a `System` object to contain the
parameters of the model, and defined another version of
`run_simulation`:

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  def run\_simulation(system, update\_func): results = TimeSeries() results\[system.t\_0\] = system.p\_0 [for]{style="color:blue"} t in linrange(system.t\_0, system.t\_end): results\[t+1\] = update\_func(results\[t\], t, system) [return]{style="color:blue"} results
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This version takes a `System` object as a parameter, and an update
function. Instead of returning the final state of the system, it returns
a `TimeSeries` that contains the state as it changes over time.

The update function takes the current state of the system, the time, and
the `System` object as parameters, and returns the new state. For
example, here's the update function for the quadratic growth model.

  ----------------------------------------------------------------------------------------------------------------------------------------------------
  def update\_func\_quad(pop, t, system): net\_growth = system.alpha \* pop + system.beta \* pop\*\*2 [return]{style="color:blue"} pop + net\_growth
  ----------------------------------------------------------------------------------------------------------------------------------------------------

In this example, the state of the system is a single number, `pop`.
Later we'll see examples where state is represented by a `State` object
with more than one variable.

Chapter [7](#chap07) introduces the quadratic growth model and
Chapter [8](#chap08) uses the model to generate predictions, but neither
chapter introduces new computational tools.

Chapter [9](#chap09) introduces SymPy, which we can use to create
`Symbol` objects:

  -------------------------------------------------------------------------------------------------------
  t, alpha = symbols([\'t alpha\']{style="color:#B20000"}) f = Function([\'f\']{style="color:#B20000"})
  -------------------------------------------------------------------------------------------------------

Write differential equations:

  --------------------------------------------------
  dfdt = diff(f(t), t) eq1 = Eq(dfdt, alpha\*f(t))
  --------------------------------------------------

And solve them:

  ----------------------------
  solution\_eq = dsolve(eq1)
  ----------------------------

That's a brief summary of the computational tools we have seen so far.

