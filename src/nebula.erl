-module(nebula).

-export([background/2, print/2]).

-author("Likid Geimfari").

-include("nebula.hrl").

%%====================================================
%% Functions for colored print.
%%====================================================

-spec print(atom(), list()) -> atom().
print(black, S) when is_list(S) ->
  io:format(?BLACK(S));
print(red, S) when is_list(S) ->
  io:format(?RED(S));
print(green, S) when is_list(S) ->
  io:format(?GREEN(S));
print(orange, S) when is_list(S) ->
  io:format(?ORANGE(S));
print(blue, S) when is_list(S) ->
  io:format(?BLUE(S));
print(purple, S) when is_list(S) ->
  io:format(?PURPLE(S));
print(yellow, S) when is_list(S) ->
  io:format(?YELLOW(S));
print(cyan, S) when is_list(S) ->
  io:format(?CYAN(S));
print(grey, S) when is_list(S) ->
  io:format(?GREY(S));
print(_, S) ->
  ?_OTHER(S).

%%====================================================
%% Functions for colored background.
%%====================================================

-spec background(atom(), list()) -> atom().
background(black, S) when is_list(S) ->
  io:format(?BLACK_BG(S));
background(red, S) when is_list(S) ->
  io:format(?RED_BG(S));
background(green, S) when is_list(S) ->
  io:format(?GREEN_BG(S));
background(yellow, S) when is_list(S) ->
  io:format(?YELLOW_BG(S));
background(blue, S) when is_list(S) ->
  io:format(?BLUE_BG(S));
background(purple, S) when is_list(S) ->
  io:format(?PURPLE_BG(S));
background(cyan, S) when is_list(S) ->
  io:format(?CYAN_BG(S));
background(_, S) when is_list(S) ->
  io:format(?_OTHER(S)).
