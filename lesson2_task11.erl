-module(lesson2_task11).
-export([encode_modified/1]).

encode_modified(List) ->
    encode_modified(List, 0, []).

encode_modified([], 0, Acc) ->
    lesson2_task05:reverse(Acc);
encode_modified([H,H|T], N, Acc) ->
    encode_modified([H|T], N+1, Acc);
encode_modified([H|T], 0, Acc) ->
    encode_modified(T, 0, [H|Acc]);
encode_modified([H|T], N, Acc) ->
    encode_modified(T, 0, [{N+1,H}|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

encode_modified_test_() -> 
    [
        ?_assert(encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [{4,a},b,{2,c},{2,a},d,{4,e}]),
        ?_assert(encode_modified([]) =:= [])
    ].

-endif.