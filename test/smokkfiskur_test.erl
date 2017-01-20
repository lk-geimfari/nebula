-module(smokkfiskur_test).


-compile(export_all).

-include_lib("eunit/include/eunit.hrl").


print_test() ->
    ?assertEqual(ok, smokkfiskur:print(black,  "Black text")),
    ?assertEqual(ok, smokkfiskur:print(green,  "Green text")),
    ?assertEqual(ok, smokkfiskur:print(green,  "Green text")),
    ?assertEqual(ok, smokkfiskur:print(blue,   "Blue text")),
    ?assertEqual(ok, smokkfiskur:print(purple, "Purple text")),
    ?assertEqual(ok, smokkfiskur:print(yellow, "Green text")),
    ?assertEqual(ok, smokkfiskur:print(cyan,   "Cyan text")),
    ?assertEqual(ok, smokkfiskur:print(orange, "Orange text")),
    ?assertEqual(ok, smokkfiskur:print(grey,   "Grey text")),
    %% Custom
    ?assert(is_atom(smokkfiskur:print(green,        "Green"))),
    ?assertEqual(badmatch, smokkfiskur:print(color, "Plain text")).


background_test() ->
    ?assertEqual(ok, smokkfiskur:background(black,  "Black background")),
    ?assertEqual(ok, smokkfiskur:background(green,  "Green background")),
    ?assertEqual(ok, smokkfiskur:background(green,  "Green background")),
    ?assertEqual(ok, smokkfiskur:background(blue,   "Blue background")),
    ?assertEqual(ok, smokkfiskur:background(purple, "Purple background")),
    ?assertEqual(ok, smokkfiskur:background(yellow, "Green background")),
    ?assertEqual(ok, smokkfiskur:background(cyan,   "Cyan background")),
    %% Custom
    ?assert(is_atom(smokkfiskur:background(green,        "Green background"))),
    ?assertEqual(badmatch, smokkfiskur:background(color, "Plain text")).
