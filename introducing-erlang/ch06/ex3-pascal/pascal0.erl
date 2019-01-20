-module(pascal0).
-export([add_row/1]).

add_row(Initial) -> add_row(Initial, 0, []).

add_row([], 0, Final) -> [0 | Final];
add_row([H|T], Last, New) -> add_row(T, H, [Last + H | New]).

