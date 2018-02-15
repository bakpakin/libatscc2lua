# libatscc2lua

The Runtime Lua library needed for code compiled with [atscc2lua](https://github.com/bakpakin/ats-lua).
The code can be installed via [luarocks](https://luarocks.org), or via a single file, 
libatscc2lua.lua, which can be packaged as needed.

Code generated by atscc2lua will begin with the lua code `require 'libatscc2lua'`, which
will try to find this library and load the needed code.

# Building

The libatscc2lua.lua file can be built using make. It is a concatentaion of all of
the individual Lua source files. In the future, AST .dats files may also be used
to create additional code.
