-module(count).
-export([countup/1]).

countup(Limit) ->
	countup(1, Limit).

countup(Count, Limit) when Count =< Limit ->
	io:format("~w!~n", [Count]),
	countup(Count+1, Limit);

countup(_, _) ->
	io:format("Finished.~n").
