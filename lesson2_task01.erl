-module(lesson2_task01).
-export([last/1]).

last([H]) ->
    H;
last([_|T]) ->
    last(T).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

last_test_() -> 
    [
        ?_assert(last([a,b,c,d]) =:= d),
        ?_assert(last([]) =:= [])
    ].

-endif.
