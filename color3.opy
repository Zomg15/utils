/*
A way of representing color as a 3D vector (hence the name Color3), albeit with the sacrifice of the alpha channel. This allows for various color operations.
Note that you can only convert from a Color3 value to a true color, not vice versa.
Also note that these functions assume that what you are inputting is a Color3 value. If you input a normal vector, expect weird results.
*/


# Color3(r, g, b) -> Color3
# Returns a Color3 value based on the red, green and blue values. To simplify calculations, each channel is represented as a number from 0 to 1 (0 being black and 1 being maximum brightness).
#!define Color3(r, g, b) vect(min(max(r / 255, 0), 255), min(max(g / 255, 0), 255), min(max(b / 255, 0), 255))

# toColor(Color3 color) -> Color
# Converts a Color3 value to a true color. This is to be used whenever the game requests a color.
#!define toColor(color) rgb(color.x * 255, color.y * 255, color.z * 255)

# red(Color3 color) -> float
# Gets the red channel of a Color3 value.
#!define red(color) color.x

# green(Color3 color) -> float
# Gets the green channel of a Color3 value.
#!define green(color) color.y

# blue(Color3 color) -> float
# Gets the blue channel of a Color3 value.
#!define green(color) color.z

# colorAdd(Color3 col1, Color3 col2) -> Color3
# Adds together the two colors. Commutative.
#!define colorAdd(col1, col2) vect(min(max(col1.x + col2.x, 0), 255), min(max(col1.y + col2.y, 0), 255), min(max(col1.z + col2.z, 0), 255))

# colorSubtract(Color3 col1, Color3 col2) -> Color3
# Subtracts one color from another. Non-commutative.
#!define colorSubtract(col1, col2) vect(min(max(col1.x - col2.x, 0), 255), min(max(col1.y - col2.y, 0), 255), min(max(col1.z - col2.z, 0), 255))

# colorMultiply(Color3 col1, Color3 col2) -> Color3
# Multiplies the two colors together. Commutative.
#!define colorMultiply(col1, col2) vect(min(max(col1.x * col2.x, 0), 255), min(max(col1.y * col2.y, 0), 255), min(max(col1.z * col2.z, 0), 255))

# colorDivide(Color3 col1, Color3 col2) -> Color3
# Divides the two colors. Non-commutative.
#!define colorDivide(col1, col2) vect(min(max(col1.x / col2.x, 0), 255), min(max(col1.y / col2.y, 0), 255), min(max(col1.z / col2.z, 0), 255))

# colorDarken(Color3 col1, Color3 col2) -> Color3
# Takes the minimum of each color value.
#!define colorDarken(col1, col2) vect(min(col1.x, col2.x), min(col1.y, col2.y), min(col1.z, col2.z))

# colorLighten(Color3 col1, Color3 col2) -> Color3
# Takes the maximum of each color value.
#!define colorLighten(col1, col2) vect(max(col1.x, col2.x), max(col1.y, col2.y), max(col1.z, col2.z))
