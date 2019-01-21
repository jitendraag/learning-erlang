-module(bounce).
-export([report/1]).

% A function that adds a counter to its message reporting
report(Count) -> 
	receive
		X -> io:format("Received #~p: ~p~n", [Count, X]),
			report(Count+1)
	end.
