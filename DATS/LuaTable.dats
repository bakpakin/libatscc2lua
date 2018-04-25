(*
** For writing ATS code
** that translates into Lua
*)

(* ****** ****** *)
//
#define
ATS_DYNLOADFLAG 0
//
(* ****** ****** *)
//
// HX-2014-08:
// prefix for external names
//
#define
ATS_EXTERN_PREFIX "ats2luapre_"
#define
ATS_STATIC_PREFIX "_atsluaspre_LuaTable_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME/contrib/libatscc/ATS2-0.3.2"
//
(* ****** ****** *)
//
#staload
UN =
"prelude/SATS/unsafe.sats"
//
(* ****** ****** *)

#staload "./../SATS/basics.sats"

(* ****** ****** *)

#staload "./../SATS/integer.sats"

(* ****** ****** *)

#staload "./../SATS/LuaTable.sats"

(* ****** ****** *)

implement
LuaTable_make_list
  {a}(xs) = let
//
fun
loop
(
  A: LuaTable(int, a), xs: List(a)
) : void =
(
case+ xs of
| list_nil() => ()
| list_cons(x, xs) =>
  let
    val _ = LuaTable_push(A, x) in loop(A, xs)
  end // [list_cons]
)
//
val A = LuaTable_nil{a}()
//
in
  let val () = loop(A, xs) in A end
end // end of [JSarray_make_list]

(* ****** ****** *)

implement
LuaTable_make_list_vt
  {a}(xs) = let
//
fun
loop
(
  A: LuaTable(int, a), xs: List_vt(a)
) : void =
(
case+ xs of
| ~list_vt_nil() => ()
| ~list_vt_cons(x, xs) =>
  let
    val _ = LuaTable_push(A, x) in loop(A, xs)
  end // [list_vt_cons]
)
//
val A = LuaTable_nil{a}()
//
in
  let val () = loop(A, xs) in A end
end // end of [JSarray_make_list_vt]

(* ****** ****** *)

implement
LuaTable_tabulate_cloref
  {a}{n}
(
  asz, fopr
) = let
//
val A = LuaTable_nil{a}()
//
fun
loop
{i:nat | i <= n}(i: int(i)): void =
(
if i < asz
  then let
    val _ =
    LuaTable_push(A, fopr(i)) in loop(i+1)
  end // end of [then]
  else () // end of [else]
// end of [if]
) (* end of [loop] *)
//
in
  let val () = loop(0) in A end
end (* end of [JSarray_tabulate_cloref] *)

(* ****** ****** *)

(* end of [JSarray.dats] *)
