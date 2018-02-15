--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

-- ------ ------ --

local error = error

the_atsptr_null = 0

local function eq(x, y) return x == y end

function ATSCKiseqz(x) return x == 0 end
function ATSCKisneqz(x) return x ~= 0 end

function ATSCKptrisnull(xs) return xs == nil end
function ATSCKptriscons(xs) return xs ~= nil end

-- ------ ------ --

ATSCKpat_int = eq
ATSCKpat_bool = eq
ATSCKpat_char = eq
ATSCKpat_float = eq
ATSCKpat_string = eq

-- ------ ------ --

ATSCKpat_con0 = eq -- function ATSCKpat_con0 (con, tag) return (con == tag) end
function ATSCKpat_con1 (con, tag) return (con[0] == tag) end

-- ------ ------ --

function ATSINScaseof_fail(errmsg)
  error("ATSINScaseof_fail:" .. errmsg)
end

function ATSINSdeadcode_fail()
   error("ATSINSdeadcode_fail")
end

-- ------ ------ --

function ATSPMVempty() end

-- ------ ------ --

function ATSPMVlazyval(thunk)
   return {0, thunk}
end

-- ------ ------ --

function ATSPMVlazyval_eval(lazyval)
    local mythunk
    local flag = lazyval[0]
    if (flag == 0) then
        lazyval[0] = 1
        mythunk = lazyval[1]
        lazyval[1] = mythunk[0](mythunk)
    else
        lazyval[0] = flag + 1
    end
  return lazyval[1]
end

-- ------ ------ --

function ATSPMVllazyval(thunk) return thunk end

-- ------ ------ --

function ATSPMVllazyval_eval(llazyval)
   return llazyval[0](llazyval, true)
end

function atspre_lazy_vt_free(llazyval)
   return llazyval[0](llazyval, false)
end

-- ------ ------ --

ats2luapre_type = type

ats2luapre_tostring = tostring
ats2luapre_toString = tostring

function ats2luapre_lazy2cloref(lazyval) return lazyval[1] end

function ats2luapre_ListSubscriptExn_throw()
  error("ListSubscriptionExn")
end

function ats2luapre_ArraySubscriptExn_throw()
  error("ArraySubscriptionExn")
end

function ats2luapre_StreamSubscriptExn_throw()
  error("StreamSubscriptionExn")
end

function ats2luapre_assert_bool0(tfv) if not tfv then error("Assert") end end
function ats2luapre_assert_bool1(tfv) if not tfv then error("Assert") end end

function ats2luapre_assert_errmsg_bool0 (tfv, errmsg)
    if not tfv then error(errmsg) end
end

function ats2luapre_assert_errmsg_bool1(tfv, errmsg)
    if not tfv then error(errmsg) return end
end

--[[
//
/* ****** ****** */
//
/*
//
// HX-2015-10-25:
// Commenting out
// implementation in basics.dats
//
*/
function
ats2luapre_cloref0_app(cf)  return cf[0](cf) end
function
ats2luapre_cloref1_app(cf, x)  return cf[0](cf, x) end
function
ats2luapre_cloref2_app(cf, x1, x2)  return cf[0](cf, x1, x2) end
function
ats2luapre_cloref3_app(cf, x1, x2, x3)  return cf[0](cf, x1, x2, x3) end
//
/* ****** ****** */
--]]

-- ------ ------ --

function ats2luapre_cloref2fun0(cf)
  return function() return ats2luapre_cloref0_app(cf) end
end

function ats2luapre_cloref2fun1(cf)
  return function(x) return ats2luapre_cloref1_app(cf,x) end
end

function ats2luapre_cloref2fun2(cf)
  return function(x1,x2) return ats2luapre_cloref2_app(cf,x1,x2) end
end

function ats2luapre_cloref2fun3(cf)
  return function(x1,x2,x3) return ats2luapre_cloref2_app(cf,x1,x2,x3) end
end

-- ------ ------ --

--ats2luapre_print = print

--[[ end of [basics_cats.lua] ]]--
--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

local tostring = tostring
local w = io.write
local function writer(x) w(tostring(x)) end

ats2luapre_print_int = w
ats2luapre_print_uint = w
ats2luapre_print_bool = writer
ats2luapre_print_double = w
ats2luapre_print_string = w
ats2luapre_print_obj = writer
ats2luapre_print_newline = function () w('\n') end
ats2luapre_print_val = writer
--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

-- ------ ------ --

local function bool2int(x) return x and 1 or 0 end
local function int2bool(x) return x ~= 0 end
local function neg(x) return not x end
local function add(x, y) return x or y end
local function mul(x, y) return x and y end

ats2luapre_bool2int0 = bool2int
ats2luapre_bool2int1 = bool2int

-- ------ ------ --

ats2luapre_int2bool0 = int2bool
ats2luapre_int2bool1 = int2bool

-- ------ ------ --

ats2luapre_neg_bool0 = neg
ats2luapre_neg_bool1 = neg

-- ------ ------ --

ats2luapre_add_bool0_bool0 = add
ats2luapre_add_bool0_bool1 = add
ats2luapre_add_bool1_bool0 = add
ats2luapre_add_bool1_bool1 = add

-- ------ ------ --

ats2luapre_mul_bool0_bool0 = mul
ats2luapre_mul_bool0_bool1 = mul
ats2luapre_mul_bool1_bool0 = mul
ats2luapre_mul_bool1_bool1 = mul

-- ------ ------ --

ats2luapre_eq_bool0_bool0 = eq
ats2luapre_neq_bool0_bool0 = neq
ats2luapre_eq_bool1_bool1 = eq
ats2luapre_neq_bool1_bool1 = neq

ats2luapre_int2bool0 = int2bool
ats2luapre_int2bool1 = int2bool

-- ------ ------ --

ats2luapre_bool2int0 = bool2int
ats2luapre_bool2int1 = bool2int

-- ------ ------ --

--[[ end of [bool_cats.js] ]]--
--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--]]

-- ------ ------ --

-- There is alot of shared code between these prelude files.
-- They could be merged / templatized

-- Local aliases
local floor = math.floor
local ceil = math.ceil
local function identity(x) return x end
local function double2int(x) return x >= 0 and floor(x) or ceil(x) end

local function add(x, y) return x + y end
local function sub(x, y) return x - y end
local function mul(x, y) return x * y end
local function div(x, y) return x / y end

local function gt(x, y) return x > y end
local function gte(x, y) return x >= y end
local function lt(x, y) return x < y end
local function lte(x, y) return x <= y end
local function eq(x, y) return x == y end
local function neq(x, y) return x ~= y end
local function compare(x, y)
  if (x < y) then 
      return -1
  elseif (x > y) then
      return 1 
  else 
      return 0 
  end
end

ats2luapre_int2double = identity
ats2luapre_double_of_int = identity
ats2luapre_double2int = double2int
ats2luapre_int_of_double = double2int

-- ------ ------ --

function ats2luapre_neg_double(x) return -x end

-- ------ ------ --

ats2luapre_abs_double = math.abs

-- ------ ------ --

ats2luapre_add_int_double = add
ats2luapre_add_double_int = add

ats2luapre_sub_int_double = sub
ats2luapre_sub_double_int = sub

ats2luapre_mul_int_double = mul
ats2luapre_mul_double_int = mul

ats2luapre_div_int_double = div
ats2luapre_div_double_int = div

-- ------ ------ --

ats2luapre_pow_double_int1 = math.pow

-- ------ ------ --

ats2luapre_add_double_double = add
ats2luapre_sub_double_double = sub
ats2luapre_mul_double_double = mul
ats2luapre_div_double_double = div

-- ------ ------ --

ats2luapre_lt_int_double = lt
ats2luapre_lt_double_int = lt
ats2luapre_lte_int_double = lte
ats2luapre_lte_double_int = lte
ats2luapre_gt_int_double = gt
ats2luapre_gt_double_int = gt
ats2luapre_gte_int_double = gte
ats2luapre_gte_double_int = gte

ats2luapre_lt_double_double = lt
ats2luapre_lte_double_double = lte
ats2luapre_gt_double_double = gt
ats2luapre_gte_double_double = gte
ats2luapre_eq_double_double = eq
ats2luapre_neq_double_double = neq

-- ------ ------ --

ats2luapre_compare_double_double = compare

-- ------ ------ --

--[[ end of [float_cats.js] ]]--
-- ------ ------ --
--
-- HX-2018-02:
-- for Lua code
-- translated from ATS
--
-- ------ ------ --

-- Local cache for functions
local floor = math.floor
local ceil = math.ceil

local function neg(x) return -x end
local function succ(x) return x + 1 end
local function pred(x) return x - 1 end
local function half(x)
  return (x >= 0) and floor(x / 2) or ceil(x / 2)
end

-- Arithmetic
local function add(x, y) return x + y end
local function sub(x, y) return x - y end
local function mul(x, y) return x * y end
local function mod(x, y) return x % y end
local function divint(x, y) 
  local q = x / y
  return q >= 0 and floor(q) or ceil(q)
end

-- Comparison
local function gt(x, y) return x > y end
local function gte(x, y) return x >= y end
local function lt(x, y) return x < y end
local function lte(x, y) return x <= y end
local function eq(x, y) return x == y end
local function neq(x, y) return x ~= y end
local function compare(x, y)
  if (x < y) then 
      return -1
  elseif (x > y) then
      return 1 
  else 
      return 0 
  end
end

--
-- Signed integers
--

ats2luapre_neg_int0 = neg
ats2luapre_neg_int1 = neg

-- ------ ------ --

function
ats2luapre_abs_int0(x) return abs(x) end

-- ------ ------ --

ats2luapre_succ_int0 = succ
ats2luapre_pred_int0 = pred

-- ------ ------ --

ats2luapre_half_int0 = half

-- ------ ------ --

ats2luapre_succ_int1 = succ
ats2luapre_pred_int1 = pred

-- ------ ------ --

ats2luapre_half_int1 = half

-- ------ ------ --

ats2luapre_add_int0_int0 = add
ats2luapre_sub_int0_int0 = sub
ats2luapre_mul_int0_int0 = mul
ats2luapre_div_int0_int0 = divint
ats2luapre_mod_int0_int0 = mod
--
-- ------ ------ --

ats2luapre_add_int1_int1 = add
ats2luapre_sub_int1_int1 = sub
ats2luapre_mul_int1_int1 = mul
ats2luapre_div_int1_int1 = divint
--
ats2luapre_mod_int1_int1 = mod
ats2luapre_nmod_int1_int1 = mod
--
-- ------ ------ --

ats2luapre_pow_int0_int1 = math.pow

-- ------ ------ --

--[[
function
ats2luapre_asl_int0_int1(x, y)  return (x << y) end
function
ats2luapre_asr_int0_int1(x, y)  return (x >> y) end

-- ------ ------ --

function
ats2luapre_lnot_int0(x)  return (~x) end
function
ats2luapre_lor_int0_int0(x, y)  return (x | y) end
function
ats2luapre_lxor_int0_int0(x, y)  return (x ^ y) end
function
ats2luapre_land_int0_int0(x, y)  return (x & y) end
--]]

-- ------ ------ --

ats2luapre_lt_int0_int0 = lt
ats2luapre_lte_int0_int0 = lte
ats2luapre_gt_int0_int0 = gt
ats2luapre_gte_int0_int0 = gte
ats2luapre_eq_int0_int0 = eq
ats2luapre_neq_int0_int0 = neq

-- ------ ------ --

ats2luapre_compare_int0_int0 = compare

-- ------ ------ --

ats2luapre_lt_int1_int1 = lt
ats2luapre_lte_int1_int1 = lte
ats2luapre_gt_int1_int1 = gt
ats2luapre_gte_int1_int1 = gte
ats2luapre_eq_int1_int1 = eq
ats2luapre_neq_int1_int1 = neq

ats2luapre_compare_int1_int1 = compare

-- ------ ------ --

ats2luapre_max_int0_int0 = math.max
ats2luapre_min_int0_int0 = math.min
ats2luapre_max_int1_int1 = math.max
ats2luapre_min_int1_int1 = math.min

--
-- Unsigned Integers
--

ats2luapre_succ_uint0 = succ
ats2luapre_pred_uint0 = pred

-- ------ ------ --

ats2luapre_add_uint0_uint0 = add
ats2luapre_sub_uint0_uint0 = sub
ats2luapre_mul_uint0_uint0 = mul
function ats2luapre_div_uint0_uint0(x, y) return floor(x / y) end
ats2luapre_mod_uint0_uint0 = mod

-- ------ ------ --

--[[
function
ats2luapre_lsl_uint0_int1(x, y)  return (x << y) end
function
ats2luapre_lsr_uint0_int1(x, y)  return (x >>> y) end

-- ------ ------ --

function
ats2luapre_lnot_uint0(x)  return (~x) end
function
ats2luapre_lor_uint0_uint0(x, y)  return (x | y) end
function
ats2luapre_lxor_uint0_uint0(x, y)  return (x ^ y) end
function
ats2luapre_land_uint0_uint0(x, y)  return (x & y) end
--]]

-- ------ ------ --

ats2luapre_lt_uint0_uint0 = lt
ats2luapre_lte_uint0_uint0 = lte
ats2luapre_gt_uint0_uint0 = gt
ats2luapre_gte_uint0_uint0 = gte
ats2luapre_eq_uint0_uint0 = eq
ats2luapre_neq_uint0_uint0 = neq

-- ------ ------ --

ats2luapre_compare_uint0_uint0 = compare

-- ------ ------ --

-- end of [integer_cats.lua] --
