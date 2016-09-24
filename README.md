<p align="center">
  <img src="https://raw.githubusercontent.com/lk-geimfari/cuttlefish/master/other/logo.png">
</p>


### Usage
Just use the following format {color, "Text"}
```erlang
cuttlefish:println({red, "Colored text"}).
```

### Example
```erlang
-import(cuttlefish, [println/1]).

update_something() ->
  %% ...
  %% ...
  %% ...
  println({green, "Something has been updated successfully!"}).
```

### Docs

```erlang
-import(cuttlefish, [println/1]).


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
