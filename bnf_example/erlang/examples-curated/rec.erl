-module(r).
-export([loop/0]).
loop() -> receive stop -> ok end.
