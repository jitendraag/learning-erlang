-module(bounce).
-export([report/1]).

% Using the return value of the receive clause as state for the next iteration
report(Count) ->
	NewCount = receive
		X -> io:format("Received #~p: ~p~n", [Count, X]),
		Count + 1
	end,
	report(NewCount).
