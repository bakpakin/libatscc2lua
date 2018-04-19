(*
** For writing ATS code
** that translates into JavaScript
*)

(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define ATS_EXTERN_PREFIX "ats2luapre_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME/contrib/libatscc"
//
#staload "./../basics.sats"
//
#include "{$LIBATSCC}/SATS/option.sats"
//
(* ****** ****** *)
//
fun{a:t0p}
fprint_option
  (LuaFile, Option(INV(a))): void = "mac#%"
//
(* ****** ****** *)

(* end of [option.sats] *)
