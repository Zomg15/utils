/*
This module contains macros related to raycasts. It allows you to use raycasts more efficiently without going through the cumbersome syntax.
Note that for all macros here, you still have to specify what kind of raycast you want. (position, player, normal)
*/


# raycastShort(Position start, Position end)
#A shorthand for Ray Cast Hit Position. All values other than the start and end position are default.
#!define raycastShort(start, end) raycast(start, end, getAllPlayers(), eventPlayer, true)

# eyecast(Player player)
# A shorthand for a ray cast shot out from a player's eyes, used frequently.
#!define eyecast(player) raycast(player.getEyePosition(), player.getEyePosition() + player.getFacingDirection() * 1000, getAllPlayers(), player, true)

# eyecastWithLength(Player player, float length)
# Same as above, but with a parameter for the length of the raycast.
#!define eyecastWithLength(player, length) raycast(player.getEyePosition(), player.getEyePosition() + player.getFacingDirection() * length, getAllPlayers(), player, true)

# raycastDirection(Position start, Direction dir)
# A raycast that takes a start position and direction.
#!define raycastDirection(start, dir) raycast(start, start + dir * 1000, getAllPlayers(), eventPlayer, true)

# raycastDirectionWithLength(Position start, Direction dir, float length)
# Same as above, but with a parameter for the length of the raycast.
#!define raycastDirectionWithLength(start, dir, length) raycast(start, start + dir * length, getAllPlayers(), eventPlayer, true)