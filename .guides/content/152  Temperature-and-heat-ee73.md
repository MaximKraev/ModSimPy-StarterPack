15.2  Temperature and heat {#sec91 .section}
--------------------------

To understand how coffee cools (and milk warms), we need a model of
temperature and heat. [Temperature]{style="font-weight:bold"} is a
property of an object or a system; in SI units it is measured in degrees
Celsius (). Temperature quantifies how hot or cold the object is, which
is related to the average velocity of the particles that make up the
object.

[]{#hevea_default366}

When particles in a hot object contact particles in a cold object, the
hot object gets cooler and the cold object gets warmer as energy is
transferred from one to the other. The transferred energy is called
[heat]{style="font-weight:bold"}; in SI units it is measured in joules
().

[]{#hevea_default367}

Heat is related to temperature by the following equation (see
[[https://modsimpy.com/thermass]{style="font-family:monospace"}](https://modsimpy.com/thermass)):

  ---------------------------------------------------------------------------------------------------
  [Q]{style="font-style:italic"} = [C]{style="font-style:italic"} Δ [T]{style="font-style:italic"} 
  ---------------------------------------------------------------------------------------------------

where [Q]{style="font-style:italic"} is the amount of heat transferred
to an object, Δ [T]{style="font-style:italic"} is resulting change in
temperature, and [C]{style="font-style:italic"} is the [thermal
mass]{style="font-weight:bold"} of the object, which quantifies how much
energy it takes to heat or cool it. In SI units, thermal mass is
measured in joules per degree Celsius ().

[]{#hevea_default368}

For objects made primarily from one material, thermal mass can be
computed like this:

  ---------------------------------------------------------------------------------------------------------------------------------
  [C]{style="font-style:italic"} = [m]{style="font-style:italic"} [c]{style="font-style:italic"}~[p]{style="font-style:italic"}~ 
  ---------------------------------------------------------------------------------------------------------------------------------

where [m]{style="font-style:italic"} is the mass of the object and
[c]{style="font-style:italic"}~[p]{style="font-style:italic"}~ is the
[specific heat capacity]{style="font-weight:bold"} of the material (see
[[https://modsimpy.com/specheat]{style="font-family:monospace"}](https://modsimpy.com/specheat)).

[]{#hevea_default369}

We can use these equations to estimate the thermal mass of a cup of
coffee. The specific heat capacity of coffee is probably close to that
of water, which is 4.2. Assuming that the density of coffee is close to
that of water, which is 1, the mass of 300 of coffee is 300, and the
thermal mass is 1260.

[]{#hevea_default370}

So when a cup of coffee cools from 90 to 70, the change in temperature,
Δ [T]{style="font-style:italic"} is 20, which means that 25200 of heat
energy was transferred from the coffee to the surrounding environment
(the cup holder and air in my car).

To give you a sense of how much energy that is, if you were able to
harness all of that heat to do work (which you
cannot^[3](#note9){#text9}^), you could use it to lift a cup of coffee
from sea level to 8571, just shy of the height of Mount Everest, 8848.

[]{#hevea_default371}

Assuming that the cup has less mass than the coffee, and is made from a
material with lower specific heat, we can ignore the thermal mass of the
cup. For a cup with substantial thermal mass, we might consider a model
that computes the temperature of coffee and cup separately.

