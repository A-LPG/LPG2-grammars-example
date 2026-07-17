// type alias + interface subset
type Id = number;
interface Point {
    x: number;
    y: number;
}
function dist(p: Point): number {
    return p.x + p.y;
}
