-module(binary_join_test).

-include_lib("eunit/include/eunit.hrl").

-define(BIN_LIST, [
  <<"Lorem">>,
  <<"ipsum">>,
  <<"dolor">>,
  <<"sit">>,
  <<"amet">>,
  <<"consectetur">>,
  <<"adipiscing">>,
  <<"elit">>
]).

-define(JOIN_LIST, <<"Lorem ipsum dolor sit amet consectetur adipiscing elit">>).

join_test() ->
  Result = binary_join:join(?BIN_LIST, <<" ">>),
  ?assertEqual(?JOIN_LIST, Result).

default_separator_test() ->
  Result = binary_join:join(?BIN_LIST),
  ?assertEqual(<<"Lorem,ipsum,dolor,sit,amet,consectetur,adipiscing,elit">>, Result).
