-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, [], []).

pack([], [], Acc1) ->
    lesson2_task05:reverse(Acc1);
pack([H,H|T], Acc, Acc1) ->
    pack([H|T], [H|Acc], Acc1); 
pack([H|T], Acc, Acc1)->
    pack(T, [], [[H|Acc]|Acc1]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

pack_test_() -> [
	?_assert(pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]),
	?_assert(pack([]) =:= [])].
-endif.