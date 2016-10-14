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

-define (_RESET,     "\033[0m").
-define (BLACK  (S), "\033[30m~s~n~s", [S, ?_RESET]).
-define (RED    (S), "\e[31m~s~n~s",   [S, ?_RESET]).
-define (GREEN  (S), "\033[92m~s~n~s", [S, ?_RESET]).
-define (ORANGE (S), "\033[33m~s~n~s", [S, ?_RESET]).
-define (BLUE   (S), "\033[34m~s~n~s", [S, ?_RESET]).
-define (PURPLE (S), "\033[35m~s~n~s", [S, ?_RESET]).
-define (YELLOW (S), "\033[93m~s~n~s", [S, ?_RESET]).
-define (CYAN   (S), "\033[96m~s~n~s", [S, ?_RESET]).
-define (GREY   (S), "\033[37m~s~n~s", [S, ?_RESET]).
-define (_OTHER (S), S).


%%====================================================
%% Internal macros for colored background.
%%====================================================

-define (BLACK_BG  (S), "\e[40m~s~s~n", [S, ?_RESET]).
-define (RED_BG    (S), "\e[41m~s~s~n", [S, ?_RESET]).
-define (GREEN_BG  (S), "\e[42m~s~s~n", [S, ?_RESET]).
-define (YELLOW_BG (S), "\e[43m~s~s~n", [S, ?_RESET]).
-define (BLUE_BG   (S), "\e[44m~s~s~n", [S, ?_RESET]).
-define (PURPLE_BG (S), "\e[45m~s~s~n", [S, ?_RESET]).
-define (CYAN_BG   (S), "\e[46m~s~s~n", [S, ?_RESET]).


%%====================================================
%% Functions for colored print.
%%====================================================

print({black,  S})  -> io:format(?BLACK  (S));
print({red,    S})  -> io:format(?RED    (S));
print({green,  S})  -> io:format(?GREEN  (S));
print({orange, S})  -> io:format(?ORANGE (S));
print({blue,   S})  -> io:format(?BLUE   (S));
print({purple, S})  -> io:format(?PURPLE (S));
print({yellow, S})  -> io:format(?YELLOW (S));
print({cyan,   S})  -> io:format(?CYAN   (S));
print({grey,   S})  -> io:format(?GREY   (S));
print({Other,  S})  -> io:format(?_OTHER (S)).


%%====================================================
%% Functions for colored background.
%%====================================================

background({black,  S})  -> io:format(?BLACK_BG  (S));
background({red,    S})  -> io:format(?RED_BG    (S));
background({green,  S})  -> io:format(?GREEN_BG  (S));
background({yellow, S})  -> io:format(?YELLOW_BG (S));
background({blue,   S})  -> io:format(?BLUE_BG   (S));
background({purple, S})  -> io:format(?PURPLE_BG (S));
background({cyan,   S})  -> io:format(?CYAN_BG   (S));
background({Other,  S})  -> io:format(?_OTHER    (S)).
