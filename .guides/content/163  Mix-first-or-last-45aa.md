16.3  Mix first or last? {#sec98 .section}
------------------------

Now we have everything we need to solve the problem. First I'll create
objects to represent the coffee and cream, and run for 30 minutes.

coffee = make\_system(T\_init=90, t\_end=30, r=r\_coffee, volume=300)
coffee\_results = run\_simulation(coffee, update\_func)

milk = make\_system(T\_init=5, t\_end=30, r=r\_milk, volume=50)
milk\_results = run\_simulation(milk, update\_func)

The final temperatures, before mixing, are 70 and 21.8. Then I'll mix
them:

mix\_last = mix(coffee, milk)

After mixing, the temperature is 63.1, which is still warm enough to be
enjoyable. Would we do any better if we added the milk first?

To find out, I'll create new objects for the coffee and milk:

coffee = make\_system(T\_init=90, r=r\_coffee, volume=300, t\_end=30)
milk = make\_system(T\_init=5, r=r\_milk, volume=50, t\_end=30)

Then mix them and simulate 30 minutes:

mix\_first = mix(coffee, milk) results = run\_simulation(mix\_first,
update\_func)

The final temperature is only 61.4. So it looks like adding the milk at
the end is better, by about 1.7. But is that the best we can do?

