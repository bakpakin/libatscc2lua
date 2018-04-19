#define ATS_EXTERN_PREFIX "ats2luapre_"
#define LIBATSCC_targetloc "$PATSHOME/contrib/libatscc"
#staload "./../basics.sats"
#include "{$LIBATSCC}/SATS/stream.sats"

fun
stream_nth_exn
  {a:t0p}
(
  xs: stream(INV(a)), n: intGte(0)
) : (a) = "mac#%"

overload [] with stream_nth_exn of 100
