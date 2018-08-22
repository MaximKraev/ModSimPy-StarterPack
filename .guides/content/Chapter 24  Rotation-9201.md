Chapter 24  Rotation {#sec135 .chapter}
====================

[]{#chap24}

In this chapter we model systems that involve rotating objects. In
general, rotation is complicated: in three dimensions, objects can
rotate around three axes; objects are often easier to spin around some
axes than others; and they may be stable when spinning around some axes
but not others.

[]{#hevea_default562}

If the configuration of an object changes over time, it might become
easier or harder to spin, which explains the surprising dynamics of
gymnasts, divers, ice skaters, etc.

And when you apply a twisting force to a rotating object, the effect is
often contrary to intuition. For an example, see this video on
gyroscopic precession
[[https://modsimpy.com/precess]{style="font-family:monospace"}](https://modsimpy.com/precess).

[]{#hevea_default563}

In this chapter, we will not take on the physics of rotation in all its
glory. Rather, we will focus on simple scenarios where all rotation and
all twisting forces are around a single axis. In that case, we can treat
some vector quantities as if they were scalars (in the same way that we
sometimes treat velocity as a scalar with an implicit direction).

[]{#hevea_default564}

This approach makes it possible to simulate and analyze many interesting
systems, but you will also encounter systems that would be better
approached with the more general toolkit.

The fundamental ideas in this chapter and the next are [angular
velocity]{style="font-weight:bold"}, [angular
acceleration]{style="font-weight:bold"},
[torque]{style="font-weight:bold"}, and [moment of
inertia]{style="font-weight:bold"}. If you are not already familiar with
these concepts, I will define them as we go along, and I will point to
additional reading.

At the end of the next chapter, you will use these tools to simulate the
behavior of a yo-yo (see
[[https://modsimpy.com/yoyo]{style="font-family:monospace"}](https://modsimpy.com/yoyo)).
But we'll work our way up to it gradually, starting with toilet paper.

