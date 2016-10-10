%%%-------------------------------------------------------------------
%%% @author Lk Geimfari <likid.geimfari@gmail.com>
%%% @copyright (C) 2016, Lk Geimfari (Isaak Uchakaev)
%%%-------------------------------------------------------------------
-module(smokkfiskur).
-author("Lk Geimfari").

-export ([print/1, background/1]).


%%====================================================
%% Internal macros for colored text.
%%====================================================
-define (BLACK(S),  "\033[30m~s~n", [S]).
-define (RED(S),    "\e[31m~s~n",   [S]).
-define (GREEN(S),  "\033[92m~s~n", [S]).
-define (ORANGE(S), "\033[33m~s~n", [S]).
-define (BLUE(S),   "\033[34m~s~n", [S]).
-define (PURPLE(S), "\033[35m~s~n", [S]).
-define (YELLOW(S), "\033[93m~s~n", [S]).
-define (CYAN(S),   "\033[96m~s~n", [S]).
-define (GREY(S),   "\033[37m~s~n", [S]).
-define (_OTHER(S), S).


print({black,  S})  -> io:format(?BLACK(S));
print({red,    S})  -> io:format(?RED(S));
print({green,  S})  -> io:format(?GREEN(S));
print({orange, S})  -> io:format(?ORANGE(S));
print({blue,   S})  -> io:format(?BLUE(S));
print({purple, S})  -> io:format(?PURPLE(S));
print({yellow, S})  -> io:format(?YELLOW(S));
print({cyan,   S})  -> io:format(?CYAN(S));
print({grey,   S})  -> io:format(?GREY(S));
print({Other,  S})  -> io:format(?_OTHER(S)).


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
