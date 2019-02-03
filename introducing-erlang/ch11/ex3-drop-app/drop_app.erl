-module(drop_app).
-behavior(application).
-export([start/2, stop/1]).

% The application module for the drop program

start(_Type, _StartArgs) ->
	drop_sup:start_link().

stop(_State) ->
	ok.
