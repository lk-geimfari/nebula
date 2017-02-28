# Nebula

[![Build Status](https://travis-ci.org/lk-geimfari/smokkfiskur.svg?branch=master)](https://travis-ci.org/lk-geimfari/nebula)
[![Hex.pm](https://img.shields.io/hexpm/v/plug.svg)](https://hex.pm/packages/nebula)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/nebula/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/nebula/master/other/logo2.png">
</p>
---------

__Nebula__ is a small library for colored (ANSI) output in Erlang. It's can be useful when you need to create a command-line applications.


### Installation
Make sure, that `rebar3` installed and configured in your OS and add `{deps, [{nebula, "0.1.3"}]}.` to your `rebar.config` now run the following command:

```
➜ ~ rebar3 compile
```

### Testing
For run tests you should use task `eunit` of `rebar3`. 
```
➜ ~ rebar3 eunit
```

### Usage
Just use the following format `print(color, "Text").`

```erlang
nebula:print(red, "Red text").
```
---------
### Example
```erlang
-import(nebula, [print/2]).

update_something() ->
  %% ...
  %% ...
  %% ...
  print(green, "Something has been updated successfully!").
```
or

```erlang
-import(nebula, [print/2]).


%%=========================
%% Text
%%=========================
print(red,    "Text").
print(black,  "Text").

%%=========================
%% Background
%%=========================


background(red,    "Text").
background(black,  "Text").
```
### Screenshot

[Here](https://raw.githubusercontent.com/lk-geimfari/nebula/master/other/screen.png) you can find screenshot.
