(*
** For writing ATS code
** that translates into Lua
*)

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
ATS_STATIC_PREFIX "_ats2luapre_reference_"
//
(* ****** ****** *)
//
#staload UN =
  "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/basics.sats"
#staload "./../SATS/LuaTable.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/reference.sats"
//
(* ****** ****** *)
//
(*
assume
ref_vt0ype_type(a:t@ype) = LuaTable(int, a)
*)
//
(* ****** ****** *)
//
implement
ref{a}(x) = ref_make_elt{a}(x)
//
implement
ref_make_elt{a}(x) =
  $UN.cast{ref(a)}(LuaTable_sing(x))
//
(* ****** ****** *)
//
implement
ref_make_type_elt
  {a}(_type_, x) = ref_make_elt{a}(x)
//
(* ****** ****** *)

implement
ref_get_elt{a}(r) = let
  val r = $UN.cast{LuaTable(int, a)}(r) in LuaTable_get(r, 1)
end // end of [ref_get_elt]

(* ****** ****** *)

implement
ref_set_elt{a}(r, x0) = let
  val r = $UN.cast{LuaTable(int, a)}(r) in LuaTable_set(r, 1, x0)
end // end of [ref_set_elt]

(* ****** ****** *)

implement
ref_exch_elt{a}(r, x0) = let
  val r =
    $UN.cast{LuaTable(int, a?)}(r)
  // end of [val]
  val x1 = LuaTable_get(r, 1)
in
  LuaTable_set(r, 1, $UN.castvwtp0{a?}(x0)); $UN.castvwtp0{a}(x1)
end // end of [ref_exch_elt]

(* ****** ****** *)
//
extern
fun{a:vt0p} ref(x0: a): ref(a)
//
implement{a} ref(x0) = ref_make_elt{a}(x0)
//
(* ****** ****** *)

(* end of [reference.dats] *)
