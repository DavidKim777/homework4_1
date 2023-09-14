-module(lesson2_task10).
-export([encode/1]).

encode(List) ->
    encode(List, 0, []).

encode([], 0, Acc)->
    lesson2_task05:reverse(Acc);
encode([H,H|T], N, Acc) ->
    encode([H|T], N+1, Acc);
encode([H|T], N, Acc)->
    encode(T, 0, [{N+1,H}|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

encode_test_() -> 
    [
        ?_assert(encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]),
        ?_assert(encode([]) =:= [])
    ].

-endif.
