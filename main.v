module main
import math

struct Point { // represents a point on a 2d plane
	x f64
	y f64
}

struct Line { //line between 2 points on the plaen
	start Point
	end Point
}

struct Plane { //2d coordinate system
	width f64
	height f64
mut:
	points []Point
}

fn create_plane(width f64, height f64) Plane { //create a plane with a width and height
	return Plane {
		width: width,
		height: height,
		points: [],
	}
}

fn (mut p Plane) add_point(x f64, y f64) { //add a point to the plane
	p.points << Point{
		x: x,
		y: y,
	}
}

fn distance(p1 Point, p2 Point) f64 { //get the distance between 2 points
	dx := p1.x - p2.x
	dy := p1.y - p2.y
	return math.sqrt(dx * dx + dy * dy)
}

fn midpoint(p1 Point, p2 Point) Point { //get the midpoint between 2 points
	return Point {
		x: (p1.x + p2.x) / 2,
		y: (p1.y + p2.y) / 2,
	}
}

fn main(){
	mut plane := create_plane(800, 600)
	plane.add_point(100, 100) //point 0
	plane.add_point(200, 200) //point 1
	plane.add_point(300, 300) //point 2

	mid := midpoint(plane.points[0], plane.points[1])
	dist := distance(plane.points[0], plane.points[1])
	println('Midpoint between points 0 and 1: (${mid.x}, ${mid.y})')
	println('Distance between points 0 and 1: ${dist}')
}

