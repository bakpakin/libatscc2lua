(* ****** ****** *)
(*
** For writing ATS code
** that translates into Lua
*)
(* ****** ****** *)
//
// HX-2014-09-09
//
(* ****** ****** *)
//
#staload "./SATS/basics.sats"
//
(* ****** ****** *)
//
#staload "./SATS/integer.sats"
//
(* ****** ****** *)
//
#staload "./SATS/bool.sats"
#staload "./SATS/float.sats"
#staload "./SATS/print.sats"
//
(* ****** ****** *)
// #staload "./SATS/gvalue.sats"
//
(* ****** ****** *)
//
#staload "./SATS/gprint.sats"
#staload _ = "./DATS/gprint.dats"
//
(* ****** ****** *)
//
#staload "./SATS/list.sats"
#staload _ = "./DATS/list.dats"
//
#staload "./SATS/list_vt.sats"
#staload _ = "./DATS/list_vt.dats"
//
(* ****** ****** *)
//
#staload "./SATS/option.sats"
#staload _ = "./DATS/option.dats"
//
(* ****** ****** *)
//
#staload "./SATS/stream.sats"
#staload _ = "./DATS/stream.dats"
//
#staload "./SATS/stream_vt.sats"
#staload _ = "./DATS/stream_vt.dats"
//
(* ****** ****** *)

#staload "./SATS/LuaTable.sats"

(* ****** ****** *)
//
#staload "./SATS/intrange.sats"
#staload "./SATS/arrayref.sats"
#staload "./SATS/matrixref.sats"
#staload "./SATS/reference.sats"
//
(* ****** ****** *)

#staload "./SATS/slistref.sats" // list-based stack
#staload "./SATS/qlistref.sats" // list-based queue

(* ****** ****** *)
//
#staload
"./SATS/list0.sats" // un-indexed list
#staload
"./SATS/array0.sats" // un-indexed array
#staload
"./SATS/option0.sats" // un-indexed option
#staload
"./SATS/matrix0.sats" // un-indexed matrix
//
#staload
_(*anon*) = "./DATS/list0.dats" // un-indexed list
#staload
_(*anon*) = "./DATS/array0.dats" // un-indexed array
#staload
_(*anon*) = "./DATS/option0.dats" // un-indexed option
#staload
_(*anon*) = "./DATS/matrix0.dats" // un-indexed matrix
//
(* ****** ****** *)

(* end of [staloadall.hats] *)
