-module(lesson2_task12).
-export([decode_modified/1]).

decode_modified(List) ->
    decode_modified(List, []). 

decode_modified([], Acc) ->
    lesson2_task05:reverse(Acc);
decode_modified([{0,_H}|T], Acc) ->
    decode_modified(T, Acc);
decode_modified([{N,H}|T], Acc)->
    decode_modified([{N-1,H}|T], [H|Acc]);
decode_modified([H|T], Acc) ->
    decode_modified(T, [H|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

decode_modified_test_() -> 
    [
        ?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
        ?_assert(decode_modified([]) =:= [])
    ].

-endif.