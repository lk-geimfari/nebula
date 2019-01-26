-module(nebula).

-export([background/2, print/2]).

-author("Likid Geimfari").

-include("nebula.hrl").

%%====================================================
%% Functions for colored print.
%%====================================================

-spec print(atom(), list()) -> atom().
print(Color, S) when is_atom(Color) and is_list(S) ->
  case Color of
    black ->
      io:format(?BLACK(S));
    red ->
      io:format(?RED(S));
    green ->
      io:format(?GREEN(S));
    orange ->
      io:format(?ORANGE(S));
    blue ->
      io:format(?BLUE(S));
    purple ->
      io:format(?PURPLE(S));
    yellow ->
      io:format(?YELLOW(S));
    cyan ->
      io:format(?CYAN(S));
    grey ->
      io:format(?GREY(S));
    _ ->
      ?_OTHER(S)
  end.

%%====================================================
%% Functions for colored background.
%%====================================================

-spec background(atom(), list()) -> atom().
background(Color, S) when is_atom(Color) and is_list(S) ->
  case Color of
    black ->
      io:format(?BLACK_BG(S));
    red ->
      io:format(?RED_BG(S));
    green ->
      io:format(?GREEN_BG(S));
    blue ->
      io:format(?BLUE_BG(S));
    purple ->
      io:format(?PURPLE_BG(S));
    yellow ->
      io:format(?YELLOW_BG(S));
    cyan ->
      io:format(?CYAN_BG(S));
    _ ->
      ?_OTHER(S)
  end.
