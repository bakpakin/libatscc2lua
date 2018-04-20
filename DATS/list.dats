#define ATS_DYNLOADFLAG 0
#define ATS_EXTERN_PREFIX "ats2luapre_"
#define ATS_STATIC_PREFIX "_ats2luapre_list_"
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc/ATS2-0.3.2"

(* ****** ****** *)

#staload UN = "prelude/SATS/unsafe.sats"

(* ****** ****** *)

#staload "./../SATS/basics.sats"

(* ****** ****** *)

#staload "./../SATS/integer.sats"

(* ****** ****** *)

#staload "./../SATS/print.sats"
#staload "./../SATS/filebas.sats"

(* ****** ****** *)

#staload "./../SATS/list.sats"

(* ****** ****** *)

#staload "./../SATS/LuaTable.sats"

(* ****** ****** *)

#staload "./../SATS/stream.sats"
#staload _ = "./stream.dats"

#staload "./../SATS/stream_vt.sats"
#staload _ = "./stream_vt.dats"

(* ****** ****** *)

#define ATSCC_STREAM 1
#define ATSCC_STREAM_VT 1

(* ****** ****** *)

#include "{$LIBATSCC}/DATS/list.dats"

(* ****** ****** *)

extern
fun{}
print_list$sep(): void
//
implement
{}(*tmp*)
print_list$sep
  ((*void*)) = print_string(", ")
//
implement
{a}(*tmp*)
print_list
  (xs) = let
//
implement
fprint_val<a>
  (out, x) = print_val<a>(x)
implement
fprint_list$sep<>(out) = print_list$sep<>()
//
in
  fprint_list<a>(STDOUT, xs)
end // end of [print_list]
//
(* ****** ****** *)
//
implement
{a}(*tmp*)
print_list_sep
  (xs, sep) = let
//
implement
fprint_val<a>(out, x) = print_val<a>(x)
implement
fprint_list$sep<>(out) = print_string(sep)
//
in
  fprint_list<a>(STDOUT, xs)
end // end of [print_list_sep]
//
(* ****** ****** *)

(* end of [list.dats] *)
