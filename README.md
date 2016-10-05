
Smokkfiskur
-----------
[![Build Status](https://travis-ci.org/lk-geimfari/cuttlefish.svg?branch=master)](https://travis-ci.org/lk-geimfari/cuttlefish)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/smokkfiskur/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/smokkfiskur/master/other/logo.png">
</p>
---------
Smokkfiskur is a small library for colored (ANSI) output in Erlang. It's can be useful when you need to create a command-line applications.


### Usage
Just use the following format {color, "Text"}
```erlang
smokkfiskur:println({red, "Colored text"}).
```
---------
### Example
```erlang
-import(smokkfiskur, [println/1]).

update_something() ->
  %% ...
  %% ...
  %% ...
  println({green, "Something has been updated successfully!"}).
```
---------
### Docs

```erlang
-import(smokkfiskur, [println/1]).


%%=========================
%% Text
%%=========================
println({red,    "Text"}).
println({black,  "Text"}).
println({green,  "Text"}).
println({orange, "Text"}).
println({blue,   "Text"}).
println({purple, "Text"}).
println({yellow, "Text"}).
println({cyan,   "Text"}).
println({gray,   "Text"}).

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
