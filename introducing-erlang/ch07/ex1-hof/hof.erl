-module(hof).
-export([tripler/2]).

% An extremely simplem higher-order function

tripler(Value, Function) -> 3 * Function(Value).

