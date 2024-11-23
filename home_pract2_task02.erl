-module(home_pract3_task02).
-author("alexbuzin").
-export([words/1]).

words(BinText) ->
  words(BinText, <<>>, []).

words(<<>>, <<>>, Acc) ->
  lists:reverse(Acc);
words(<<>>, Word, Acc) ->
  lists:reverse([Word | Acc]);
words(<<32, Rest/binary>>, <<>>, Acc) ->
  words(Rest, <<>>, Acc);
words(<<32, Rest/binary>>, Word, Acc) ->
  words(Rest, <<>>, [Word | Acc]);
words(<<C, Rest/binary>>, Word, Acc) ->
  words(Rest, <<Word/binary, C>>, Acc).
