# Nebula

[![Build Status](https://travis-ci.org/lk-geimfari/nebula.svg?branch=master)](https://travis-ci.org/lk-geimfari/nebula)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/nebula/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/nebula/master/media/logo.png">
</p>

__Nebula__ is a small library for colored (ANSI) output in Erlang. It's can be useful when you need to create a command-line application.


### Installation

Add `{nebula, "0.1.1"}` to your rebar.config file and run following commands:

```
➜ ~ make compile
```

### Usage
Just use the following format `print(color, "Text").`

```erlang
update_something() ->
  %% ...
  %% ...
  nebula:print(green, "Something has been updated successfully!").
```
