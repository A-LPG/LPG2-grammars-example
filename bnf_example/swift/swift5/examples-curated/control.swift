func score(n: Int) -> Int {
  if n > 0 {
    return n
  } else {
    return 0
  }
}

func loopDemo(limit: Int) {
  var i = 0
  while i < limit {
    i = i + 1
  }
  for x in limit {
    if x > 0 {
      return
    }
  }
  guard limit > 0 else {
    return
  }
  repeat {
    i = i - 1
  } while i > 0
}
