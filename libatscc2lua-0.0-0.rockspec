package = "libatscc2lua"
version = "0.0-0"
source = {
    url = 
}
description = {
   summary = "Runtime library for ATS when compiled to Lua.",
   detailed = [[
   Runtime library for ATS when compiled to Lua. Pure Lua, does
   not contain native code or binaries.
   ]],
   homepage = "https://github.com/bakpakin/ats-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
       libatscc2lua = "libatscc2lua.lua"
   },
   copy_directories = {
       "SATS",
       "HATS"
   }
}
