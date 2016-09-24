-module (farbe).
-author("Lk Geimfari").


-export ([print/1]).
-export ([background/1]).
-export ([underline/1]).


underline(Str) -> io:format("\e[4m~s\033[0m~n", [Str]).

print({black,  Str})  ->
  io:format("\033[30m~s\033[0m~n", [Str]);
print({red,    Str})  ->
  io:format("\e[31m~s\033[0m~n",   [Str]);
print({green,  Str})  ->
  io:format("\033[92m~s\033[0m~n", [Str]);
print({orange, Str})  ->
  io:format("\033[33m~s\033[0m~n", [Str]);
print({blue,   Str})  ->
  io:format("\033[34m~s\033[0m~n", [Str]);
print({purple, Str})  ->
  io:format("\033[35m~s\033[0m~n", [Str]);
print({yellow, Str})  ->
  io:format("\033[93m~s\033[0m~n", [Str]);
print({cyan,   Str})  ->
  io:format("\033[96m~s\033[0m~n", [Str]);
print({grey,   Str})  ->
  io:format("\033[37m~s\033[0m",   [Str]);
print({Other,  Str})  ->
  io:format("~s~n", [Str]).


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
