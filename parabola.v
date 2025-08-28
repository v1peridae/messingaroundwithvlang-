import math
// Representation of a parabola in focus-directrix format.
struct Parabola {
	focus Point // Point representing the focus of the parabola
	directrix f64 // Float representing the y-value of this parabola's directrix
}

fn (p Parabola) getVertex() {
	return Point{x: focus.x, y: ((focus.y + directrix) / 2)}
}

fn (p Parabola) getPointAtX(x f64) {
	return (x - focus.x) * (x - focus.x) * (1.0 / 2.0) * (1.0 / (focus.y - directrix)) + ((focus.y + directrix) / 2.0)
}