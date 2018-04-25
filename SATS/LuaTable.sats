(*
** For writing ATS code
** that translates into Lua
*)

#define
ATS_EXTERN_PREFIX "ats2luapre_"

#staload "./basics.sats"

fun LuaTable_insert1
    {v:vt0p}
    (LuaTable(int, v), v): void = "mac#%"

fun LuaTable_insert2
    {v:vt0p}
    (LuaTable(int, v), int, v): void = "mac#%"

fun LuaTable_remove
    {v:vt0p}
    (LuaTable(int, v), int): v = "mac#%"

fun LuaTable_concat1
    (LuaTable(int, string)): string = "mac#%"

fun LuaTable_concat2
    (LuaTable(int, string), sep: string): string = "mac#%"

fun LuaTable_length
    {v:vt0p}
    (LuaTable(int, v)): int = "mac#%"

fun LuaTable_length0based
    {v:vt0p}
    (LuaTable(int, v)): int = "mac#%"

fun LuaTable_copy
    {k,v:vt0p}
    (LuaTable(k, v)): LuaTable(k, v) = "mac#%"

(* ****** ****** *)

fun LuaTable_nil
    {k,v:vt0p}
    (): LuaTable(k, v) = "mac#%"

fun LuaTable_sing
    {v:vt0p}
    (v): LuaTable(int, v) = "mac#%"

fun LuaTable_pair
    {v:vt0p}
    (v, v): LuaTable(int, v) = "mac#%"

(* ****** ****** *)

fun LuaTable_set
    {k,v:vt0p}
    (LuaTable(k, v), k, v): void = "mac#%"

fun LuaTable_exch
    {k,v:vt0p}
    (LuaTable(k, v), k, v): LuaTable(k, v) = "mac#%"

fun LuaTable_get
    {k,v:vt0p}
    (LuaTable(k, v), k): v = "mac#%"

(* ****** ****** *)

fun LuaTable_pop
    {v:vt0p}
    (LuaTable(int, v)): v = "mac#%"

fun LuaTable_push
    {v:vt0p}
    (LuaTable(int, v), v): LuaTable(int, v) = "mac#%"

(* ****** ****** *)

(* end of [LuaTable.sats] *)
