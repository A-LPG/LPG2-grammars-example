class Control {
  int x;
  void f() {
    x = 0;
    if (x) x = 1; else x = 2;
    while (x) x = 0;
    return;
  }
}
