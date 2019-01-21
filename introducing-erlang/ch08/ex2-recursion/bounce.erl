-module(bounce).
-export([report/0]).

% A function that creates a stable process
report() ->
	receive
		X -> io:format("Received ~p~n", [X]),
			report()
	end.
