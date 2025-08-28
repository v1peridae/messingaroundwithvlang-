// Representation of a parabola in focus-directrix format.
struct Parabola {
	focus Point // Point representing the focus of the parabola
	directrix f64 // Float representing the y-value of this parabola's directrix
}

fn (p Parabola) get_vertex() Point {
	return Point{x: p.focus.x, y: ((p.focus.y + p.directrix) / 2)}
}

fn (p Parabola) get_point_at_x(x f64) f64 {
	return ((x - p.focus.x) * (x - p.focus.x) * (1.0 / 2.0) * (1.0 / (p.focus.y - p.directrix)) + ((p.focus.y + p.directrix) / 2.0))
}