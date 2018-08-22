15.3  Heat transfer {#sec92 .section}
-------------------

In a situation like the coffee cooling problem, there are three ways
heat transfers from one object to another (see
[[https://modsimpy.com/transfer]{style="font-family:monospace"}](https://modsimpy.com/transfer)):

[]{#hevea_default372} []{#hevea_default373} []{#hevea_default374}
[]{#hevea_default375}

-   Conduction: When objects at different temperatures come into
    contact, the faster-moving particles of the higher-temperature
    object transfer kinetic energy to the slower-moving particles of the
    lower-temperature object.
-   Convection: When particles in a gas or liquid flow from place to
    place, they carry heat energy with them. Fluid flows can be caused
    by external action, like stirring, or by internal differences in
    temperature. For example, you might have heard that hot air rises,
    which is a form of "natural convection\".

    []{#hevea_default376}

-   Radiation: As the particles in an object move due to thermal energy,
    they emit electromagnetic radiation. The energy carried by this
    radiation depends on the object's temperature and surface properties
    (see
    [[https://modsimpy.com/thermrad]{style="font-family:monospace"}](https://modsimpy.com/thermrad)).

For objects like coffee in a car, the effect of radiation is much
smaller than the effects of conduction and convection, so we will ignore
it.

Convection can be a complex topic, since it often depends on details of
fluid flow in three dimensions. But for this problem we will be able to
get away with a simple model called "Newton's law of cooling\".

[]{#hevea_default377}

