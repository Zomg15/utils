/*
Contains various functions for generating random stuff.
*/


# inUnitSphere() -> Vector
# Returns a random point inside the unit sphere. (function taken from Wolfram Mathworld, with some adjustments)
#!define inUnitSphere() angleToDirection(random.uniform(0, 360), acosDeg(random.uniform(-1, 1)) - 90) * random.uniform(0, 1) ** (1/3)

# onUnitSphere() -> Vector
# Returns a random point on the unit sphere. Can also be used to generate a random direction. (function taken from Wolfram Mathworld, with some adjustments)
#!define onUnitSphere() angleToDirection(random.uniform(0, 360), acosDeg(random.uniform(-1, 1)) - 90)

# randomRGB() -> Color
# Returns a random color with max opacity.
#!define randomRGB() rgb(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))

# randomRGBA() -> Color
# Returns a random color with varying opacity.
#!define randomRGBA() rgba(random.randint(0, 255), random.randint(0, 255), random.randint(0, 255), random.randint(0, 255))