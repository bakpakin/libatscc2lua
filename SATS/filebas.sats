#define ATS_EXTERN_PREFIX "ats2luapre_"
#staload "./basics.sats"

macdef STDIN = $extval (LuaFile, "io.stdin")
macdef STDOUT = $extval (LuaFile, "io.stdout")
macdef STDERR = $extval (LuaFile, "io.stderr")
