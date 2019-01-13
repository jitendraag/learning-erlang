%% @author Jitendra Agrawal
%% @doc Functions calculating velocities achieved by objects
%% dropped in a vaccum.
%% @reference from Introducing Erlang book

-module(drop).
-export([fall_velocity/1]).

%% @doc Functions calculating velocities achieved by objects
%% dropped in a vaccum (no air resistance). The distance is
%% the height from which the object falls, specified in meters,
%% and the function returns a velocity in meters per second.

-spec(fall_velocity(number()) -> number()).

fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).

