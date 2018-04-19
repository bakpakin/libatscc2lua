(*
** For writing ATS code
** that translates into JavaScript
*)

(* ****** ****** *)
//
// HX-2014-10:
// prefix for external names
//
#define ATS_EXTERN_PREFIX "ats2luapre_"
//
(* ****** ****** *)
//
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc"
#staload "./../basics.sats"
#include "{$LIBATSCC}/SATS/reference.sats"

(* end of [reference.sats] *)
