-module(lesson2_task08).
-export([compress/1]).

compress(List) ->
    compress(List, []).

compress([], Acc) ->
    lesson2_task05:reverse(Acc);
compress([H,H|T], Acc) ->
    compress([H|T], Acc);
compress([H|T], Acc) ->
    compress(T, [H|Acc]).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

compress_test_() -> 
    [
        ?_assert(compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [a,b,c,a,d,e]),
        ?_assert(compress([]) =:= [])
    ].

-endif.