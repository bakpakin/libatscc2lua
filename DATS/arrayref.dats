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
ATS_STATIC_PREFIX "_ats2luapre_arrayref_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME\
/contrib/libatscc/ATS2-0.3.2"
//
(* ****** ****** *)
//
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/basics.sats"
//
#staload "./../SATS/integer.sats"
//
#staload "./../SATS/LuaTable.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/intrange.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/arrayref.sats"
//
(* ****** ****** *)
//
#include "{$LIBATSCC}/DATS/arrayref.dats"
//
(* ****** ****** *)
//
(*
assume
arrayref_vt0ype_type(a, n) = LuaTable(int, a)
*)
//
(* ****** ****** *)

%{^
    -- Lua tables are 1 indexed by default, but we can use 0 indexes as well
    function ats2luapre_arrayref_make_elt(n, x)
      local A = {}
      for i = 0, n-1 do
          A[i] = x
      end
      return A
    end
    function ats2luapre_arrayref_uninitized(asz)
        return {}
    end
%} // end of [%{^]

(* ****** ****** *)

%{^
    function ats2jspre_arrayref_tabulate_cloref(n, fopr)
      local A = {}
      for i = 0, n-1 do
        A[i] = ats2luapre_cloref1_app(fopr, i)
      end
      return A
    end
%} // end of [%{^]

(* ****** ****** *)

implement
arrayref_get_at
  {a}(A, i) = let
  val A = $UN.cast{LuaTable(int, a)}(A) in LuaTable_get(A, i)
end // end of [arrayref_get_at]

(* ****** ****** *)

implement
arrayref_set_at
  {a}(A, i, x) = let
  val A = $UN.cast{LuaTable(int, a)}(A) in LuaTable_set(A, i, x)
end // end of [arrayref_set_at]

(* ****** ****** *)
//
// Array-with-size
//
(* ****** ****** *)
//
typedef
arrayref
(a:vt0p) = [n:nat] arrayref(a, n)
//
implement
arrszref_get_arrayref
  {a}(A) = $UN.cast{arrayref(a)}(A)
//
(* ****** ****** *)
//
implement
arrszref_make_arrayref
  {a}(A, asz) = $UN.cast{arrszref(a)}(A)
//
(* ****** ****** *)
//
implement
arrszref_size{a}(A) = let
  val A = $UN.cast{LuaTable(int, a)}(A)
in
  $UN.cast{intGte(0)}(LuaTable_length0based(A))
end // end of [arrszref_size]
//
(* ****** ****** *)
//
implement
arrszref_get_at{a}(A, i) = let
  val A = $UN.cast{LuaTable(int, a)}(A) in LuaTable_get(A, i)
end // end of [arrszref_get_at]
//
implement
arrszref_set_at{a}(A, i, x) = let
  val A = $UN.cast{LuaTable(int, a)}(A) in LuaTable_set(A, i, x)
end // end of [arrszref_set_at]
//
(* ****** ****** *)

(* end of [arrayref.dats] *)
