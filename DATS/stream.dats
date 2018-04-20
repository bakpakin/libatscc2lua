#define ATS_DYNLOADFLAG 0
#define ATS_EXTERN_PREFIX "ats2luapre_"
#define ATS_STATIC_PREFIX "_ats2luapre_stream_"
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc/ATS2-0.3.2"
#staload UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/basics.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/integer.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/print.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/list.sats"
#staload "./../SATS/reference.sats"
//
(* ****** ****** *)

#staload "./../SATS/stream.sats"

(* ****** ****** *)

#define ATSCC_ARRAYREF 1
#define ATSCC_REFERENCE 1

(* ****** ****** *)
//
#include "{$LIBATSCC}/DATS/stream.dats"
//
(* ****** ****** *)
//
extern
fun
StreamSubscriptExn_throw{a:vt0p}(): (a) = "mac#%"
//
(* ****** ****** *)

implement
stream_nth_exn
  (xs, n) = let
//
val opt =
  stream_nth_opt(xs, n)
//
in
//
case+ opt of
| ~Some_vt(x) => x
| ~None_vt((*void*)) => StreamSubscriptExn_throw()
//
end // end of [stream_nth_exn]

(* ****** ****** *)

(* end of [stream.dats] *)
