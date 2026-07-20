package shapes

Point :: struct {
    x: f32,
    y: f32,
}

area :: proc(p: Point) -> f32 {
    return p.x * p.y
}
