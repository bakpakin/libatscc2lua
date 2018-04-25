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
#define
ATS_EXTERN_PREFIX "ats2luapre_ML_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME\
/contrib/libatscc/ATS2-0.3.2"
//
#staload "./basics.sats"
//
#include "{$LIBATSCC}/SATS/ML/matrix0.sats"
//
(* ****** ****** *)

(* end of [matrix0.sats] *)
