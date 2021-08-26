/*
Contains math functions.
Note that there is actually a math enum in Overpy, but that only contains constants.
*/


# clamp(float value, float minV, float maxV) -> float
# Returns the value clamped between the minimum and maximum values.
#!define clamp(value, minV, maxV) min(max(value, minV), maxV)

# lerp(float a, float b, float t) -> float
# Linearly interpolates between a and b by t. t is automatically clamped between 0 and 1.
#!define lerp(a, b, t) a + (b - a) * min(max(t, 0), 1)

# lerpUnclamped(float a, float b, float t) -> float
# Linearly interpolates between a and b with no bound to t.
#!define lerpUnclamped(a, b, t) a + (b - a) * t

# inverseLerp(float a, float b, float value) -> float
# Calculates the parameter that produces the value between a and b.
#!define inverseLerp(a, b, value) (value - a) / (b - a)

# map(float value, float oldRangeStart, float oldRangeEnd, float newRangeStart, float newRangeEnd) -> float
# Maps the value to the new range based on the old range.
#!define map(value, oldRangeStart, oldRangeEnd, newRangeStart, newRangeEnd) newRangeStart + (newRangeEnd - newRangeStart) * ((value - oldRangeStart) / (oldRangeEnd - oldRangeStart))

# sign(value) -> int
# Returns 1 if the value is positive, -1 if it's negative and 0 if it's zero.
#!define sign(value) value / abs(value)