
Smokkfiskur
-----------
[![Build Status](https://travis-ci.org/lk-geimfari/smokkfiskur.svg?branch=master)](https://travis-ci.org/lk-geimfari/smokkfiskur)
[![Hex.pm](https://img.shields.io/badge/hex-v0.1.1-blue.svg)](https://hex.pm/packages/smokkfiskur)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/smokkfiskur/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/smokkfiskur/master/other/logo.png">
</p>
---------
Smokkfiskur is a small library for colored (ANSI) output in Erlang. It's can be useful when you need to create a command-line applications.


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
print({green,  "Text"}).
print({orange, "Text"}).
print({blue,   "Text"}).
print({purple, "Text"}).
print({yellow, "Text"}).
print({cyan,   "Text"}).
print({gray,   "Text"}).

%%=========================
%% Background
%%=========================

background({red,    "Text"}).
background({black,  "Text"}).
background({green,  "Text"}).
background({yellow, "Text"}).
background({blue,   "Text"}).
background({purple, "Text"}).
background({cyan,   "Text"}).
background({red,    "Text"}).

```
