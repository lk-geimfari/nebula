# Nebula

[![Build Status](https://travis-ci.org/lk-geimfari/nebula.svg?branch=master)](https://travis-ci.org/lk-geimfari/nebula)
[![BSD](https://img.shields.io/pypi/l/Django.svg?maxAge=2592000)](https://github.com/lk-geimfari/nebula/blob/master/LICENSE)

<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/nebula/master/media/logo.png">
</p>

[__Nebula__](https://hex.pm/packages/nebula) is a small library for colored ([ANSI](https://en.wikipedia.org/wiki/ANSI_escape_code#Colors)) output in Erlang/Elixir. It's can be useful when you need to create a user-friendly command-line application.


### Installation

Just add `{nebula, "0.1.1"}` to your rebar.config file and run following command:

```
➜ ~ make compile
```

or if you want to use this package with `Elixir` add `{:nebula, "~> 0.1.1"}` to your `mix.exs` and run following command:
```
➜ ~ mix deps.get
```

### Usage

Using with Erlang:

```erlang
update_something() ->
  %% ...
  %% ...
  nebula:print(green, "Something has been updated successfully!").
```

Using with LFE (Lisp Flavoured Erlang):
```lfe
(defun update_something ()
    (nebula:print :GREEN "Something has been updated successfully!"))
```

Using with Elixir:

```elixir
def update_something do
  # ...
  # ...
  :nebula.print(:green, "Something has been updated successfully!")
end
```

### Available functions and colors

First argument is color name (`atom`), second - your message.

- `print/2`: `black`, `red`, `green`, `orange`, `blue`, `purple`, `yellow`, `cyan`, `grey`.
- `background/2`: `black`, `red`, `green`, `yellow`, `blue`, `purple`, `cyan`.


### License
BSD 3-Clause License
