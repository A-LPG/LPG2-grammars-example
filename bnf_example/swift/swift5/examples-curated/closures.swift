func apply(value: Int) -> Int {
  let g = { x in
    return x
  }
  return g(value)
}

func throwDemo(x: Int) {
  defer {
    return
  }
  do {
    let y = x
  } catch {
    return
  }
}
