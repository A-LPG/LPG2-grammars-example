// Module declarations and exported functions shaped after grammars-v4 examples.
import { seed as initial } from "counter-data";
export var value = initial;
export function next() {
    value += 1;
    return value;
}
