-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    List1 = lesson2_task05:reverse(List),
    List == List1. 

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

is_palindrome_tert_() ->
    [
        ?_assert(is_palindrome([1,2,3,2,1]) =:= true)
    ].

-endif.