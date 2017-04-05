-module(nebula_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").

-compile(export_all).


all() ->
  [print, background].

print() ->
  ?assertEqual(ok, nebula:print(black, "Black text")),
  ?assertEqual(ok, nebula:print(green, "Green text")),
  ?assertEqual(ok, nebula:print(green, "Green text")),
  ?assertEqual(ok, nebula:print(blue, "Blue text")),
  ?assertEqual(ok, nebula:print(purple, "Purple text")),
  ?assertEqual(ok, nebula:print(yellow, "Green text")),
  ?assertEqual(ok, nebula:print(cyan, "Cyan text")),
  ?assertEqual(ok, nebula:print(orange, "Orange text")),
  ?assertEqual(ok, nebula:print(grey, "Grey text")),
  %% Custom
  ?assert(is_atom(nebula:print(green, "Green"))).


background() ->
  ?assertEqual(ok, nebula:background(black, "Black background")),
  ?assertEqual(ok, nebula:background(green, "Green background")),
  ?assertEqual(ok, nebula:background(green, "Green background")),
  ?assertEqual(ok, nebula:background(blue, "Blue background")),
  ?assertEqual(ok, nebula:background(purple, "Purple background")),
  ?assertEqual(ok, nebula:background(yellow, "Green background")),
  ?assertEqual(ok, nebula:background(cyan, "Cyan background")),
  %% Custom
  ?assert(is_atom(nebula:background(green, "Green background"))).
