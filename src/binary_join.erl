-module(binary_join).

-export([join/1]).
-export([join/2]).

join(BinList) ->
  join(BinList, <<",">>).

join(BinList, Separator) ->
  list_to_binary(join(BinList, Separator, [])).

join([], _Separator, Acc) ->
  Acc;
join([Bin], _Separator, Acc) ->
  [Acc, Bin];
join([Bin | BinList], Separator, Acc) ->
  join(BinList, Separator, [Acc, Bin, Separator]).
