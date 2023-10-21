module main

import vsl.fit

// given the variables x and y defined below
// for finding fitting parameters `y = b × x + a`

// let's define some random roughly linear data (`b~=10` and `a~=4.2`)
y := [9.21, 61.32, 22.86, 88.9, 49.42, 101.12, 102.32, 32.42, 30.19, 80.49, 43.6, 80.38, 42.17,
	23.6, 20.64, 66.05, 77.31, 58.83, 60.52, 63.05, 25.24, 96.54, 32.28, 31.95, 47.85, 24.24, 90.54,
	56.09, 86.86, 90.04]
x := [0.48, 5.75, 1.83, 8.57, 4.51, 9.68, 9.84, 2.81, 2.64, 7.62, 3.93, 7.58, 3.82, 1.99, 1.62,
	6.22, 7.27, 5.44, 5.58, 5.85, 2.15, 9.23, 2.8, 2.79, 4.39, 2.01, 8.6, 5.01, 8.25, 8.56]

// Now we use the linear fitting function on the data
a, b := fit.linear(x, y)

println('y = ${b} × x + ${a}')

// Use the found `a` and `b` to estimate a new value

new_x := 4.2
new_y := b * new_x + a

println('For new x ${new_x}, y = ${new_y}')
