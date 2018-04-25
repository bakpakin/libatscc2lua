(*
** For writing ATS code
** that translates into Lua
*)

(* ****** ****** *)
//
// HX: list-based queue
//
(* ****** ****** *)

#define ATS_DYNLOADFLAG 0

(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define
ATS_EXTERN_PREFIX "ats2luapre_"
#define
ATS_STATIC_PREFIX "_ats2luapre_qlistref_"
//
(* ****** ****** *)
//
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
#include "./../staloadall.hats"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME\
/contrib/libatscc/ATS2-0.3.2"
//
#include "{$LIBATSCC}/DATS/qlistref.dats"
//
(* ****** ****** *)

(* end of [qlistref.dats] *)
