# Smokkfiskur

[![Build Status](https://travis-ci.org/lk-geimfari/smokkfiskur.svg?branch=master)](https://travis-ci.org/lk-geimfari/smokkfiskur)
[![Hex.pm](https://img.shields.io/hexpm/v/plug.svg)](https://hex.pm/packages/smokkfiskur)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/smokkfiskur/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/smokkfiskur/master/other/logo2.png">
</p>
---------
__Smokkfiskur__ is a small library for colored (ANSI) output in Erlang. It's can be useful when you need to create a user-friendly command-line applications.


### Installation
Make sure, that `rebar3` installed and configured in your OS. If not, then [here](https://medium.com/@brucify/using-rebar3-to-manage-erlang-packages-282f78adff1e#.pyz8i9cvy) you can find a good manual. 

Add `{deps, [{smokkfiskur, “0.1.3”}]}.` to your `rebar.config` and run the following command:
```
➜  ~  rebar3 compile
```


### Usage
Just use the following format {color, "Text"}
```erlang
smokkfiskur:print({red, "Colored text"}).
```
---------
### Example
```erlang
-import(smokkfiskur, [print/1]).

update_something() ->
  %% ...
  %% ...
  %% ...
  print({green, "Something has been updated successfully!"}).
```
or
```erlang
-import(smokkfiskur, [print/1]).


%%=========================
%% Text
%%=========================
print({red,    "Text"}).
print({black,  "Text"}).

%%=========================
%% Background
%%=========================
background({red,    "Text"}).
background({black,  "Text"}).

```
