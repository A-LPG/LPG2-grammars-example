// Generic interfaces, aliases, tuple types, and typed functions.
interface Box<T> {
    value: T;
    get(): T;
}
type Name = string;
function label(box: Box<Name>): Name {
    return box.value;
}
