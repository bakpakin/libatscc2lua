#define ATS_EXTERN_PREFIX "ats2luapre_"
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc/ATS2-0.3.2"
#staload "./basics.sats"
#include "{$LIBATSCC}/SATS/matrixref.sats"

(* ****** ****** *)

fun
matrixref_uninitized
  {a:vt0p}
  {m,n:nat}
  ( nrow: int(m)
  , ncol: int(n) ) : matrixref(a?, m, n) = "mac#%"

(* end of [matrixref.sats] *)
