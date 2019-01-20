-module(overall).
-export([product/1]).

% Calculating the product of values in a list


product([]) -> 0; % in case the list is empty, return zero
product(List) -> product(List, 1).

product([], Product) -> Product; % when list empty, stop, report

product([Head|Tail], Product) -> product(Tail, Product * Head).

