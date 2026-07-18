struct Point {
  var x = 1
  var y = 2
  func magnitude() -> Int {
    return x
  }
}

class Counter {
  var value = 0
  func inc() {
    value = value + 1
  }
  init() {
    value = 0
  }
}

enum Mode {
  case on
  case off
}

extension Point {
  func doubled() -> Int {
    return x
  }
}

func use() {
  let p = Point()
  let c = Counter()
  c.inc()
}
