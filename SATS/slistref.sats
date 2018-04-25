(*
** For writing ATS code
** that translates into Lua
*)

(* ****** ****** *)
//
// HX-2014-09:
// prefix for external names
//
#define
ATS_PACKNAME
"ATSCC2JS.slistref"
//
#define
ATS_EXTERN_PREFIX "ats2luapre_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME\
/contrib/libatscc/ATS2-0.3.2"
//
#staload "./../SATS/basics.sats"
//
#include "{$LIBATSCC}/SATS/slistref.sats"
//
(* ****** ****** *)

(* end of [slistref.sats] *)
