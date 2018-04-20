(* ****** ****** *)

#define ATS_DYNLOADFLAG 0

#define
ATS_EXTERN_PREFIX "ats2luapre_"
#define
ATS_STATIC_PREFIX "_ats2luapre_basics_"
//
(* ****** ****** *)
//
#define
LIBATSCC_targetloc
"$PATSHOME/contrib/libatscc/ATS2-0.3.2"
//
(* ****** ****** *)
//
#staload "./../SATS/basics.sats"
//
(* ****** ****** *)
//
#staload "./../SATS/bool.sats"
#staload "./../SATS/integer.sats"
//
#staload "./../SATS/float.sats"
#staload "./../SATS/string.sats"
//
(* ****** ****** *)
//
#include "{$LIBATSCC}/DATS/basics.dats"
//
(* ****** ****** *)
//
////
implement
gcompare_val_val<int>
  (x, y) =
  $effmask_all(compare_int0_int0(x, y))
//
(* ****** ****** *)
//
implement
gcompare_val_val<bool>
  (x, y) =
(
//
if (x)
  then (if y then 0(*t/t*) else 1(*t/f*))
  else (if y then ~1(*f/t*) else 0(*f/f*))
//
) (* gcompare_val_val<bool> *)
//
(* ****** ****** *)
//
implement
gcompare_val_val<double>
  (x, y) =
  $effmask_all(compare_double_double(x, y))
//
implement
gcompare_val_val<string>
  (x, y) =
  $effmask_all(compare_string_string(x, y))
//
(* ****** ****** *)
implement
fun2cloref0(fopr) = lam() => fopr()
implement
fun2cloref1(fopr) = lam(x) => fopr(x)
implement
fun2cloref2(fopr) = lam(x1, x2) => fopr(x1, x2)
implement
fun2cloref3(fopr) = lam(x1, x2, x3) => fopr(x1, x2, x3)
(* ****** ****** *)

(* end of [basics.dats] *)
