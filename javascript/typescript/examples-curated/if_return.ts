// Typed control flow with early return.
function pick(flag: boolean, value: number): number {
    if (flag) {
        return value;
    }
    return 0;
}
