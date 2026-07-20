// curated from grammars-v4 Scoping.js
function foo() { return 1; }
foo();
{
    function bar() { return 2; }
    bar();
}
let callbacks = null;
