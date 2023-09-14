-module(lesson2_task13). 
-export([decode/1]).

decode(List) ->
    decode(List, []).

decode([], Acc) ->
    lesson2_task05:reverse(Acc);
decode([{0,_H}|T], Acc) ->
    decode(T, Acc);
decode([{N,H}|T], Acc) ->
    decode([{N-1, H}|T], [H|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

decode_test_() -> 
    [
        ?_assert(decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
        ?_assert(decode([]) =:= [])
    ].

-endif.