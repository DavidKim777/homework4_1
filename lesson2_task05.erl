-module(lesson2_task05).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc) ->
    reverse(T, [H|Acc]). 

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

reverse_test_() ->
    [
        ?_assert(reverse([a,b,c,d]) =:= [d,c,b,a]),
        ?_assert(reverse([]) =:= [])
    ].

-endif.