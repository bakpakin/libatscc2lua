(* ****** ****** *)
(*
** For writing ATS code
** that translates into Lua
*)
(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define ATS_PACKNAME "ATSCC2LUA.basics"
#define ATS_EXTERN_PREFIX "ats2luapre_"
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc/ATS2-0.3.2"
#include "{$LIBATSCC}/basics.sats"
#define ATS_EXTERN_PREFIX "ats2luapre_"

(* ****** ****** *)

typedef char = int

(* ****** ****** *)

typedef LuaFile = FILEref
// JSfilr

(* ****** ****** *)

abstype LuaTable(k:vt@ype, v:vt@ype)

//
macdef
assertloc(claim) = assert_errmsg(,(claim), $mylocation)

//
fun
fun2cloref0
{res:t@ype}
  (fopr: () -> res): cfun(res) = "mac#%"
fun
fun2cloref1
{a:t@ype}{res:t@ype}
  (fopr: (a) -> res): cfun(a, res) = "mac#%"
fun
fun2cloref2
{a1,a2:t@ype}{res:t@ype}
  (fopr: (a1, a2) -> res): cfun(a1, a2, res) = "mac#%"
fun
fun2cloref3
{a1,a2,a3:t@ype}{res:t@ype}
  (fopr: (a1, a2, a3) -> res): cfun(a1, a2, a3, res) = "mac#%"
//

(* end of [basics_lua.sats] *)
