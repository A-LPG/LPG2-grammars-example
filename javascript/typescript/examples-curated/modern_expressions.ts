// Typed declarations with modern ECMAScript and TypeScript expressions.
let selected: number = options?.value ?? 10;
let squared: number = selected ** 2;
let masked: number = (flags & 3) | 8;
let converted: number = squared as number;
function create(): object {
    return new Builder(converted);
}
