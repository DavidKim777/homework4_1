-module(lesson2_task04).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], N) ->
    N;
len([_|T], N) ->
    len(T, N+1).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

len_test_() ->
    [
        ?_assert(len([a,b,c,d]) =:= 4),
        ?_assert(len([]) =:= 0)
    ].

-endif.
