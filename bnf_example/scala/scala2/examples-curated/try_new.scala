object Util {
  def wrap(x: Int): Int = {
    try { x }
    finally { 0 }
  }
  def make(): Point = new Point(1, 2)
}
class Point(val x: Int, val y: Int)
