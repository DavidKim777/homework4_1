-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

duplicate([], Acc) ->
    lesson2_task05:reverse(Acc);
duplicate([H|T], Acc) ->
    duplicate(T, [H,H|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

duplicate_test_() -> 
    [
        ?_assert(duplicate([a,b,c,c,d]) =:= [a,a,b,b,c,c,c,c,d,d]),
	    ?_assert(duplicate([]) =:= [])
    ].

-endif.