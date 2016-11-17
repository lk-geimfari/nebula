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
