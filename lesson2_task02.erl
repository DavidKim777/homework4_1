-module(lesson2_task02).
-export([but_last/1]).

but_last([_,_] = L) ->
    L;
but_last([_|T]) ->
    but_last(T).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
but_last_test_() ->
    [
        ?_assert(but_last([a,b,c,d]) =:=[c,d]),
        ?_assert(but_last([_,_]) =:= L)
    ].

-endif.