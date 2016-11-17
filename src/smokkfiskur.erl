%%%-------------------------------------------------------------------
%%% @author Lk Geimfari <likid.geimfari@gmail.com>
%%% @copyright (C) 2016, Lk Geimfari (Isaak Uchakaev)
%%%-------------------------------------------------------------------
-module(smokkfiskur).
-author("Lk Geimfari").

-export ([print/1, background/1]).


-include ("macros.hrl").

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
