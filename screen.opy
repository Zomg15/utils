/*
Contains functions for specific screen coordinates.
Huge thank you to Josbird for writing a wiki article on this stuff, which I pretty much copied.
Just like in their implementation, positive x is to the right, and positive y is to the top.
The size of a screen is about +/- 2.5 screen units horizontally, and +/- 1.25 screen units vertically.
*/


# screen(Player player, float x, float y) -> Vector
# The world vector of the given screen coordinates.
#!define screen(player, x, y) player.getEyePosition() + 100 * (x * worldVector(Vector.RIGHT, player, Transform.ROTATION) + (y - 0.2) * angleToDirection(horizontalAngleOfDirection(player.getFacingDirection()), verticalAngleOfDirection(player.getFacingDirection()) - 90) + player.getFacingDirection() * 3)

# customScreen(Vector position, Vector lookingAt, float x, float y) -> Vector
# Just like the above function, but generalised to any position. Useful when working with cameras. Much longer, so only use this when needed.
#!define customScreen(position, lookingAt, x, y) position + 100 * (x * crossProduct(directionTowards(position, lookingAt), angleToDirection(horizontalAngleOfDirection(directionTowards(position, lookingAt)), verticalAngleOfDirection(directionTowards(position, lookingAt)) - 90)) + (y - 0.2) * angleToDirection(horizontalAngleOfDirection(directionTowards(position, lookingAt)), verticalAngleOfDirection(directionTowards(position, lookingAt)) - 90) + 3 * directionTowards(position, lookingAt))