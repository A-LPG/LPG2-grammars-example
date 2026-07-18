package main

func add(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	x := 1
	y := 2
	if x < y {
		x = add(x, y)
	}
}
