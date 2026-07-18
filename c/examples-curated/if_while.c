int abs_val(int n) {
  if (n < 0) {
    return 0 - n;
  }
  while (n > 0) {
    n = n - 1;
  }
  return n;
}
