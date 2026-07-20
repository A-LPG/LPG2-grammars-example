// Optional chaining, nullish coalescing, bitwise, and exponentiation.
var selected = options?.value ?? 10;
var masked = (flags & 3) | 8;
var squared = 4 ** 2;
function build() {
    return new Builder(selected + squared);
}
