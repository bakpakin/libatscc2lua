package = "libatscc2lua"
version = "scm-0"
source = {
    url = "git://github.com/bakpakin/libatscc2lua"
}
description = {
   summary = "Runtime library for ATS when compiled to Lua.",
   detailed = [[
   Runtime library for ATS when compiled to Lua. Pure Lua, does
   not contain native code or binaries.
   ]],
   homepage = "https://github.com/bakpakin/libatscc2lua",
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
       "SATS"
   }
}
