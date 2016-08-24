-module (farbe).
-author("Lk Geimfari").


-export ([cprint/1]).


cprint({black,  Str})  ->
  io:format("\033[0m\033[30m~s\033[30m\033[0m~n", [Str]);
cprint({red,    Str})  ->
  io:format("\033[0m\033[31m~s\033[31m\033[0m~n", [Str]);
cprint({green,  Str})  ->
  io:format("\033[0m\033[92m~s\033[92m\033[0m~n", [Str]);
cprint({dgreen, Str})  ->
  io:format("\033[0m\033[32m~s\033[32m\033[0m~n", [Str]);
cprint({orange, Str})  ->
  io:format("\033[0m\033[33m~s\033[33m\033[0m~n", [Str]);
cprint({blue,   Str})  ->
  io:format("\033[0m\033[34m~s\033[34m\033[0m~n", [Str]);
cprint({purple, Str})  ->
  io:format("\033[0m\033[35m~s\033[35m\033[0m~n", [Str]);
cprint({yellow, Str})  ->
  io:format("\033[0m\033[93m~s\033[93m\033[0m~n", [Str]);
cprint({pink,   Str})  ->
  io:format("\033[0m\033[95m~s\033[95m\033[0m~n", [Str]);
cprint({cyan,   Str})  ->
  io:format("\033[0m\033[96m~s\033[96m\033[0m\033[0m~n", [Str]);
cprint({grey,   Str})  ->
  io:format("\033[0\033[37m~s\033[37m\033[0m", [Str]);
cprint({Other,  Str})  ->
  io:format("~s~n", [Str]).
