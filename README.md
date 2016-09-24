
![alt text](https://raw.githubusercontent.com/lk-geimfari/farbe/master/other/logo.png)


------

### Usage
Just use the following format {color, "Text"}
```erlang
farbe:print({red, "Colored text"}).
```

### Example
```erlang
-import(farbe, [print/1]).

update_something() ->
  %% ...
  %% ...
  %% ...
  print({green, "Something has been updated successfully!"}).
```
