-module(smokkfiskur).

-export ([println/1]).
-export ([background/1]).


%%====================================================
%% Functions for colored output
%%====================================================

println({black,  Str})  ->
  io:format("\033[30m~s\033[0m~n", [Str]);
println({red,    Str})  ->
  io:format("\e[31m~s\033[0m~n",   [Str]);
println({green,  Str})  ->
  io:format("\033[92m~s\033[0m~n", [Str]);
println({orange, Str})  ->
  io:format("\033[33m~s\033[0m~n", [Str]);
println({blue,   Str})  ->
  io:format("\033[34m~s\033[0m~n", [Str]);
println({purple, Str})  ->
  io:format("\033[35m~s\033[0m~n", [Str]);
println({yellow, Str})  ->
  io:format("\033[93m~s\033[0m~n", [Str]);
println({cyan,   Str})  ->
  io:format("\033[96m~s\033[0m~n", [Str]);
println({grey,   Str})  ->
  io:format("\033[37m~s\033[0m",   [Str]);
println({Other,  Str})  ->
  io:format("~s~n", [Str]).


%%====================================================
%% Functions for colored  background.
%%====================================================

background({black, Str})  ->
  io:format("\e[40m~s\033[0m", [Str]);
background({red, Str})    ->
  io:format("\e[41m~s\033[0m", [Str]);
background({green, Str})  ->
  io:format("\e[42m~s\033[0m", [Str]);
background({yellow, Str}) ->
  io:format("\e[43m~s\033[0m", [Str]);
background({blue, Str})   ->
  io:format("\e[44m~s\033[0m", [Str]);
background({purple, Str}) ->
  io:format("\e[45m~s\033[0m", [Str]);
background({cyan, Str})   ->
  io:format("\e[46m~s\033[0m", [Str]);
background({red, Str})    ->
  io:format("\e[41m~s\033[0m", [Str]);
background({Other,  Str})  ->
  io:format("~s~n", [Str]).
