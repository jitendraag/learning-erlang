-module(bounce).
-export([report/0]).

% An overly simple process definition
report() ->
	receive
		X -> io:format("Received ~p~n", [X])
	end.

