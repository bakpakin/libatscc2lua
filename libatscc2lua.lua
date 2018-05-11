-- Auto generated - Do not edit

--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]

ats2luapre_LuaTable_insert1 = table.insert
ats2luapre_LuaTable_insert2 = table.insert
ats2luapre_LuaTable_remove = table.remove
ats2luapre_LuaTable_concat2 = table.concat
ats2luapre_LuaTable_concat1 = table.concat

function ats2luapre_LuaTable_length(t) return #t end
function ats2luapre_LuaTable_length0based(t) return #t + 1 end

function ats2luapre_LuaTable_copy(t)
    local ret = {}
    for k, v in pairs(t) do ret[k] = v end
    return ret
end

function ats2luapre_LuaTable_nil() return {} end
function ats2luapre_LuaTable_sing(x) return {x} end
function ats2luapre_LuaTable_pair(x, y) return {x, y} end

function ats2luapre_LuaTable_set(t, k, v) t[k] = v end
function ats2luapre_LuaTable_exch(t, k, v) local old = t[k]; t[k] = v; return old end
function ats2luapre_LuaTable_get(t, k) return t[k] end

function ats2luapre_LuaTable_pop(t) local ret = t[#t]; t[#t] = nil; return ret end
function ats2luapre_LuaTable_push(t, x) t[#t + 1] = x; return t end

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
--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--]]

-- ------ ------ --

ats2luapre_gprint_tostring = tostring

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
ats2luapre_print_table = writer
ats2luapre_print_newline = function () w('\n') end
ats2luapre_print_val = writer
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_ats2luapre_ML_array0_patsfun_8__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_array0_patsfun_8(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_array0_patsfun_11__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_array0_patsfun_11(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_array0_patsfun_17__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_array0_patsfun_17(cenv[1], arg0) end, env0}
end


function
ats2luapre_ML_array0_make_elt(arg0, arg1)

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_make_elt
  tmpret0 = ats2luapre_arrszref_make_elt(arg0, arg1)
  return tmpret0
end -- end-of-function


function
ats2luapre_ML_array0_size(arg0)

--
-- knd = 0
  local tmpret1
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_size
  tmpret1 = ats2luapre_arrszref_size(arg0)
  return tmpret1
end -- end-of-function


function
ats2luapre_ML_array0_length(arg0)

--
-- knd = 0
  local tmpret2
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_length
  tmpret2 = ats2luapre_arrszref_size(arg0)
  return tmpret2
end -- end-of-function


function
ats2luapre_ML_array0_get_at(arg0, arg1)

--
-- knd = 0
  local tmpret3
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_get_at
  tmpret3 = ats2luapre_arrszref_get_at(arg0, arg1)
  return tmpret3
end -- end-of-function


function
ats2luapre_ML_array0_set_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_set_at
  ats2luapre_arrszref_set_at(arg0, arg1, arg2)
  return
end -- end-of-function


function
ats2luapre_ML_array0_exch_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret5
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_exch_at
  tmpret5 = ats2luapre_arrszref_exch_at(arg0, arg1, arg2)
  return tmpret5
end -- end-of-function


function
ats2luapre_ML_array0_exists(arg0, arg1)

--
-- knd = 0
  local tmpret6
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_exists
  tmpret6 = ats2luapre_arrszref_exists_cloref(arg0, arg1)
  return tmpret6
end -- end-of-function


function
ats2luapre_ML_array0_exists_method(arg0)

--
-- knd = 0
  local tmpret7
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_exists_method
  tmpret7 = _ats2luapre_ML_array0_patsfun_8__closurerize(arg0)
  return tmpret7
end -- end-of-function


function
_ats2luapre_ML_array0_patsfun_8(env0, arg0)

--
-- knd = 0
  local tmpret8
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_array0_patsfun_8
  tmpret8 = ats2luapre_ML_array0_exists(env0, arg0)
  return tmpret8
end -- end-of-function


function
ats2luapre_ML_array0_forall(arg0, arg1)

--
-- knd = 0
  local tmpret9
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_forall
  tmpret9 = ats2luapre_arrszref_forall_cloref(arg0, arg1)
  return tmpret9
end -- end-of-function


function
ats2luapre_ML_array0_forall_method(arg0)

--
-- knd = 0
  local tmpret10
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_forall_method
  tmpret10 = _ats2luapre_ML_array0_patsfun_11__closurerize(arg0)
  return tmpret10
end -- end-of-function


function
_ats2luapre_ML_array0_patsfun_11(env0, arg0)

--
-- knd = 0
  local tmpret11
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_array0_patsfun_11
  tmpret11 = ats2luapre_ML_array0_forall(env0, arg0)
  return tmpret11
end -- end-of-function


function
array0_find_index(arg0, arg1)

--
-- knd = 0
  local tmpret12
  local tmp17
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_find_index
  tmp17 = ats2luapre_ML_array0_size(arg0)
  tmpret12 = _ats2luapre_ML_array0_loop_13(arg1, 0, tmp17)
  return tmpret12
end -- end-of-function


function
_ats2luapre_ML_array0_loop_13(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret13
  local tmp14
  local tmp15
  local tmp16
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_ML_array0_loop_13
    tmp14 = ats2luapre_lt_int0_int0(arg0, arg1)
    if(tmp14) then
      tmp15 = env0[0](env0, arg0)
      if(tmp15) then
        tmpret13 = arg0
       else
        tmp16 = ats2luapre_add_int1_int1(arg0, 1)
        -- ATStailcalseq_beg
        apy0 = tmp16
        apy1 = arg1
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_ML_array0_loop_13
        -- ATStailcalseq_end
      end -- end-of-if
     else
      tmpret13 = ats2luapre_neg_int1(1)
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret13  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_array0_app(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_app
  ats2luapre_ML_array0_foreach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_array0_foreach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_foreach
  ats2luapre_arrszref_foreach_cloref(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_array0_foreach_method(arg0)

--
-- knd = 0
  local tmpret20
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_foreach_method
  tmpret20 = _ats2luapre_ML_array0_patsfun_17__closurerize(arg0)
  return tmpret20
end -- end-of-function


function
_ats2luapre_ML_array0_patsfun_17(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_array0_patsfun_17
  ats2luapre_ML_array0_foreach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_array0_tabulate(arg0, arg1)

--
-- knd = 0
  local tmpret22
  local tmp23
  local tmp24
  local tmplab, tmplab_lua
--
  -- __patsflab_array0_tabulate
  tmp24 = ats2luapre_gte_int1_int1(arg0, 0)
  if(tmp24) then
    tmp23 = arg0
   else
    tmp23 = 0
  end -- end-of-if
  tmpret22 = ats2luapre_arrszref_tabulate_cloref(tmp23, arg1)
  return tmpret22
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ATSextcode_beg() ]]
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
--[[ ATSextcode_end() ]]

--[[ ATSextcode_beg() ]]
    function ats2jspre_arrayref_tabulate_cloref(n, fopr)
      local A = {}
      for i = 0, n-1 do
        A[i] = ats2luapre_cloref1_app(fopr, i)
      end
      return A
    end
--[[ ATSextcode_end() ]]

function
_ats2luapre_arrayref_patsfun_6__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_arrayref_patsfun_6(cenv[1], arg0) end, env0}
end


function
_ats2luapre_arrayref_patsfun_9__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_arrayref_patsfun_9(cenv[1], arg0) end, env0}
end


function
_ats2luapre_arrayref_patsfun_12__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_arrayref_patsfun_12(cenv[1], arg0) end, env0}
end


function
ats2luapre_arrayref_exists_cloref(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_arrayref_exists_cloref
  tmpret0 = ats2luapre_int_exists_cloref(arg1, arg2)
  return tmpret0
end -- end-of-function


function
ats2luapre_arrayref_forall_cloref(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret1
  local tmplab, tmplab_lua
--
  -- __patsflab_arrayref_forall_cloref
  tmpret1 = ats2luapre_int_forall_cloref(arg1, arg2)
  return tmpret1
end -- end-of-function


function
ats2luapre_arrayref_foreach_cloref(arg0, arg1, arg2)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_arrayref_foreach_cloref
  ats2luapre_int_foreach_cloref(arg1, arg2)
  return
end -- end-of-function


function
ats2luapre_arrszref_make_elt(arg0, arg1)

--
-- knd = 0
  local tmpret3
  local tmp4
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_make_elt
  tmp4 = ats2luapre_arrayref_make_elt(arg0, arg1)
  tmpret3 = ats2luapre_arrszref_make_arrayref(tmp4, arg0)
  return tmpret3
end -- end-of-function


function
ats2luapre_arrszref_exists_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret5
  local tmp6
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_exists_cloref
  tmp6 = ats2luapre_arrszref_size(arg0)
  tmpret5 = ats2luapre_int_exists_cloref(tmp6, arg1)
  return tmpret5
end -- end-of-function


function
ats2luapre_arrszref_exists_method(arg0)

--
-- knd = 0
  local tmpret7
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_exists_method
  tmpret7 = _ats2luapre_arrayref_patsfun_6__closurerize(arg0)
  return tmpret7
end -- end-of-function


function
_ats2luapre_arrayref_patsfun_6(env0, arg0)

--
-- knd = 0
  local tmpret8
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_arrayref_patsfun_6
  tmpret8 = ats2luapre_arrszref_exists_cloref(env0, arg0)
  return tmpret8
end -- end-of-function


function
ats2luapre_arrszref_forall_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret9
  local tmp10
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_forall_cloref
  tmp10 = ats2luapre_arrszref_size(arg0)
  tmpret9 = ats2luapre_int_forall_cloref(tmp10, arg1)
  return tmpret9
end -- end-of-function


function
ats2luapre_arrszref_forall_method(arg0)

--
-- knd = 0
  local tmpret11
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_forall_method
  tmpret11 = _ats2luapre_arrayref_patsfun_9__closurerize(arg0)
  return tmpret11
end -- end-of-function


function
_ats2luapre_arrayref_patsfun_9(env0, arg0)

--
-- knd = 0
  local tmpret12
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_arrayref_patsfun_9
  tmpret12 = ats2luapre_arrszref_forall_cloref(env0, arg0)
  return tmpret12
end -- end-of-function


function
ats2luapre_arrszref_foreach_cloref(arg0, arg1)

--
-- knd = 0
  local tmp14
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_foreach_cloref
  tmp14 = ats2luapre_arrszref_size(arg0)
  ats2luapre_int_foreach_cloref(tmp14, arg1)
  return
end -- end-of-function


function
ats2luapre_arrszref_foreach_method(arg0)

--
-- knd = 0
  local tmpret15
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_foreach_method
  tmpret15 = _ats2luapre_arrayref_patsfun_12__closurerize(arg0)
  return tmpret15
end -- end-of-function


function
_ats2luapre_arrayref_patsfun_12(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_arrayref_patsfun_12
  ats2luapre_arrszref_foreach_cloref(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_arrszref_tabulate_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret17
  local tmp18
  local tmp19
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_tabulate_cloref
  tmp19 = ats2luapre_arrayref_tabulate_cloref(arg0, arg1)
  tmp18 = ats2luapre_arrszref_make_arrayref(tmp19, arg0)
  tmpret17 = tmp18
  return tmpret17
end -- end-of-function


function
ats2luapre_arrayref_get_at(arg0, arg1)

--
-- knd = 0
  local tmpret20
  local tmplab, tmplab_lua
--
  -- __patsflab_arrayref_get_at
  tmpret20 = ats2luapre_LuaTable_get(arg0, arg1)
  return tmpret20
end -- end-of-function


function
ats2luapre_arrayref_set_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_arrayref_set_at
  ats2luapre_LuaTable_set(arg0, arg1, arg2)
  return
end -- end-of-function


function
ats2luapre_arrszref_get_arrayref(arg0)

--
-- knd = 0
  local tmpret22
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_get_arrayref
  tmpret22 = arg0
  return tmpret22
end -- end-of-function


function
ats2luapre_arrszref_make_arrayref(arg0, arg1)

--
-- knd = 0
  local tmpret23
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_make_arrayref
  tmpret23 = arg0
  return tmpret23
end -- end-of-function


function
ats2luapre_arrszref_size(arg0)

--
-- knd = 0
  local tmpret24
  local tmp25
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_size
  tmp25 = ats2luapre_LuaTable_length0based(arg0)
  tmpret24 = tmp25
  return tmpret24
end -- end-of-function


function
ats2luapre_arrszref_get_at(arg0, arg1)

--
-- knd = 0
  local tmpret26
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_get_at
  tmpret26 = ats2luapre_LuaTable_get(arg0, arg1)
  return tmpret26
end -- end-of-function


function
ats2luapre_arrszref_set_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_arrszref_set_at
  ats2luapre_LuaTable_set(arg0, arg1, arg2)
  return
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
ats2luapre_funarray_make_nil()

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_make_nil
  tmpret0 = nil
  return tmpret0
end -- end-of-function


function
ats2luapre_funarray_size(arg0)

--
-- knd = 0
  local tmpret1
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_size
  tmpret1 = _ats2luapre_funarray_size_3(arg0)
  return tmpret1
end -- end-of-function


function
_ats2luapre_funarray_diff_2(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret2
  local tmp4
  local tmp5
  local tmp6
  local tmp7
  local tmp8
  local tmp9
  local tmp10
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_funarray_diff_2
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab0
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab1
        tmpret2 = 0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab2
        case 4: -- __atstmplab3
        tmp4 = arg1[1]
        tmp5 = arg1[2]
        tmp6 = ats2luapre_gt_int1_int1(arg0, 0)
        if(tmp6) then
          tmp7 = ats2luapre_half_int1(arg0)
          tmp9 = ats2luapre_add_int1_int1(tmp7, tmp7)
          tmp8 = ats2luapre_gt_int1_int1(arg0, tmp9)
          if(tmp8) then
            -- ATStailcalseq_beg
            apy0 = tmp7
            apy1 = tmp4
            arg0 = apy0
            arg1 = apy1
            funlab_lua = 1 -- __patsflab__ats2luapre_funarray_diff_2
            -- ATStailcalseq_end
           else
            tmp10 = ats2luapre_sub_int1_int1(tmp7, 1)
            -- ATStailcalseq_beg
            apy0 = tmp10
            apy1 = tmp5
            arg0 = apy0
            arg1 = apy1
            funlab_lua = 1 -- __patsflab__ats2luapre_funarray_diff_2
            -- ATStailcalseq_end
          end -- end-of-if
         else
          tmpret2 = 1
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret2  end
  end -- endwhile-fun
end -- end-of-function


function
_ats2luapre_funarray_size_3(arg0)

--
-- knd = 0
  local tmpret11
  local tmp13
  local tmp14
  local tmp15
  local tmp16
  local tmp17
  local tmp18
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_size_3
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab4
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab5
      tmpret11 = 0
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab6
      case 4: -- __atstmplab7
      tmp13 = arg0[1]
      tmp14 = arg0[2]
      tmp15 = _ats2luapre_funarray_size_3(tmp14)
      tmp17 = _ats2luapre_funarray_diff_2(tmp15, tmp13)
      tmp16 = ats2luapre_add_int1_int1(1, tmp17)
      tmp18 = ats2luapre_mul_int1_int1(2, tmp15)
      tmpret11 = ats2luapre_add_int1_int1(tmp18, tmp16)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret11
end -- end-of-function


function
ats2luapre_funarray_get_at(arg0, arg1)

--
-- knd = 0
  local tmpret19
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_get_at
  tmpret19 = _ats2luapre_funarray_get_at_5(arg0, arg1)
  return tmpret19
end -- end-of-function


function
_ats2luapre_funarray_get_at_5(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret20
  local tmp21
  local tmp22
  local tmp23
  local tmp24
  local tmp25
  local tmp26
  local tmp27
  local tmp28
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_funarray_get_at_5
    tmp21 = ats2luapre_gt_int1_int1(arg1, 0)
    if(tmp21) then
      tmp22 = ats2luapre_half_int1(arg1)
      tmp24 = ats2luapre_add_int1_int1(tmp22, tmp22)
      tmp23 = ats2luapre_gt_int1_int1(arg1, tmp24)
      if(tmp23) then
        tmp25 = arg0[1]
        -- ATStailcalseq_beg
        apy0 = tmp25
        apy1 = tmp22
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_funarray_get_at_5
        -- ATStailcalseq_end
       else
        tmp26 = arg0[2]
        tmp27 = ats2luapre_sub_int1_int1(tmp22, 1)
        -- ATStailcalseq_beg
        apy0 = tmp26
        apy1 = tmp27
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_funarray_get_at_5
        -- ATStailcalseq_end
      end -- end-of-if
     else
      tmp28 = arg0[0]
      tmpret20 = tmp28
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret20  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_funarray_set_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret29
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_set_at
  tmpret29 = _ats2luapre_funarray_set_at_7(arg0, arg1, arg2)
  return tmpret29
end -- end-of-function


function
_ats2luapre_funarray_set_at_7(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret30
  local tmp31
  local tmp32
  local tmp33
  local tmp34
  local tmp35
  local tmp36
  local tmp37
  local tmp38
  local tmp39
  local tmp40
  local tmp41
  local tmp42
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_set_at_7
  tmp31 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp31) then
    tmp32 = ats2luapre_half_int1(arg1)
    tmp33 = arg0[0]
    tmp34 = arg0[1]
    tmp35 = arg0[2]
    tmp37 = ats2luapre_add_int1_int1(tmp32, tmp32)
    tmp36 = ats2luapre_gt_int1_int1(arg1, tmp37)
    if(tmp36) then
      tmp38 = _ats2luapre_funarray_set_at_7(tmp34, tmp32, arg2)
      tmpret30 = [tmp33, tmp38, tmp35]
     else
      tmp40 = ats2luapre_sub_int1_int1(tmp32, 1)
      tmp39 = _ats2luapre_funarray_set_at_7(tmp35, tmp40, arg2)
      tmpret30 = [tmp33, tmp34, tmp39]
    end -- end-of-if
   else
    tmp41 = arg0[1]
    tmp42 = arg0[2]
    tmpret30 = [arg2, tmp41, tmp42]
  end -- end-of-if
  return tmpret30
end -- end-of-function


function
ats2luapre_funarray_insert_l(arg0, arg1)

--
-- knd = 0
  local tmpret43
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_insert_l
  tmpret43 = _ats2luapre_funarray_ins_l_9(arg0, arg1)
  return tmpret43
end -- end-of-function


function
_ats2luapre_funarray_ins_l_9(arg0, arg1)

--
-- knd = 0
  local tmpret44
  local tmp45
  local tmp46
  local tmp47
  local tmp48
  local tmp49
  local tmp50
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_ins_l_9
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab8
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab9
      tmp48 = nil
      tmp49 = nil
      tmpret44 = [arg1, tmp48, tmp49]
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab10
      case 4: -- __atstmplab11
      tmp45 = arg0[0]
      tmp46 = arg0[1]
      tmp47 = arg0[2]
      tmp50 = _ats2luapre_funarray_ins_l_9(tmp47, tmp45)
      tmpret44 = [arg1, tmp50, tmp46]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret44
end -- end-of-function


function
ats2luapre_funarray_insert_r(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret51
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_insert_r
  tmpret51 = _ats2luapre_funarray_ins_r_11(arg0, arg1, arg2)
  return tmpret51
end -- end-of-function


function
_ats2luapre_funarray_ins_r_11(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret52
  local tmp53
  local tmp54
  local tmp55
  local tmp56
  local tmp57
  local tmp58
  local tmp59
  local tmp60
  local tmp61
  local tmp62
  local tmp63
  local tmp64
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_ins_r_11
  tmp53 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp53) then
    tmp54 = ats2luapre_half_int1(arg1)
    tmp55 = arg0[0]
    tmp56 = arg0[1]
    tmp57 = arg0[2]
    tmp59 = ats2luapre_add_int1_int1(tmp54, tmp54)
    tmp58 = ats2luapre_gt_int1_int1(arg1, tmp59)
    if(tmp58) then
      tmp60 = _ats2luapre_funarray_ins_r_11(tmp56, tmp54, arg2)
      tmpret52 = [tmp55, tmp60, tmp57]
     else
      tmp62 = ats2luapre_sub_int1_int1(tmp54, 1)
      tmp61 = _ats2luapre_funarray_ins_r_11(tmp57, tmp62, arg2)
      tmpret52 = [tmp55, tmp56, tmp61]
    end -- end-of-if
   else
    tmp63 = nil
    tmp64 = nil
    tmpret52 = [arg2, tmp63, tmp64]
  end -- end-of-if
  return tmpret52
end -- end-of-function


function
ats2luapre_funarray_remove_l(arg0)

--
-- knd = 0
  local tmpret65
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_remove_l
  tmpret65 = _ats2luapre_funarray_rem_l_13(arg0)
  return tmpret65
end -- end-of-function


function
_ats2luapre_funarray_rem_l_13(arg0)

--
-- knd = 0
  local tmpret66
  local tmp67
  local tmp68
  local tmp70
  local tmp71
  local tmp72
  local tmp73
  local tmp74
  local tmp75
  local tmp76
  local tmp77
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_rem_l_13
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab12
      tmp68 = arg0[1]
      case 2: -- __atstmplab13
      if (ATSCKptriscons(tmp68)) then
        do tmplab_lua = 5 break; end
      end -- ifthen
      case 3: -- __atstmplab14
      tmp67 = arg0[0]
      tmp73 = nil
      tmpret66 = [tmp73, tmp67]
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 4: -- __atstmplab15
      case 5: -- __atstmplab16
      tmp70 = arg0[0]
      tmp71 = arg0[1]
      tmp72 = arg0[2]
      tmp74 = _ats2luapre_funarray_rem_l_13(tmp71)
      tmp75 = tmp74[0]
      tmp76 = tmp74[1]
      tmp77 = [tmp70, tmp72, tmp75]
      tmpret66 = [tmp77, tmp76]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret66
end -- end-of-function


function
ats2luapre_funarray_remove_r(arg0, arg1)

--
-- knd = 0
  local tmpret78
  local tmplab, tmplab_lua
--
  -- __patsflab_funarray_remove_r
  tmpret78 = _ats2luapre_funarray_rem_r_15(arg0, arg1)
  return tmpret78
end -- end-of-function


function
_ats2luapre_funarray_rem_r_15(arg0, arg1)

--
-- knd = 0
  local tmpret79
  local tmp80
  local tmp81
  local tmp82
  local tmp83
  local tmp84
  local tmp85
  local tmp86
  local tmp87
  local tmp88
  local tmp89
  local tmp90
  local tmp91
  local tmp92
  local tmp93
  local tmp94
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_funarray_rem_r_15
  tmp80 = ats2luapre_half_int1(arg1)
  tmp81 = arg0[0]
  tmp82 = arg0[1]
  tmp83 = arg0[2]
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab17
      if (ATSCKptriscons(tmp82)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab18
      tmp84 = nil
      tmpret79 = [tmp84, tmp81]
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab19
      case 4: -- __atstmplab20
      tmp86 = ats2luapre_add_int1_int1(tmp80, tmp80)
      tmp85 = ats2luapre_gt_int1_int1(arg1, tmp86)
      if(tmp85) then
        tmp87 = _ats2luapre_funarray_rem_r_15(tmp83, tmp80)
        tmp88 = tmp87[0]
        tmp89 = tmp87[1]
        tmp90 = [tmp81, tmp82, tmp88]
        tmpret79 = [tmp90, tmp89]
       else
        tmp91 = _ats2luapre_funarray_rem_r_15(tmp82, tmp80)
        tmp92 = tmp91[0]
        tmp93 = tmp91[1]
        tmp94 = [tmp81, tmp92, tmp83]
        tmpret79 = [tmp94, tmp93]
      end -- end-of-if
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret79
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_ats2luapre_list_patsfun_40__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_40(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_44__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_44(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_47__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_47(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_51__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_51(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_55__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_55(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_59__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_59(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_62__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_62(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_66__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_66(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_68__closurerize()
  return {function(cenv, arg0, arg1) return _ats2luapre_list_patsfun_68(arg0, arg1) end}
end


function
_ats2luapre_list_patsfun_72__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_72(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_76__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_76(cenv[1], arg0) end, env0}
end


function
_ats2luapre_list_patsfun_81__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_81(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
_ats2luapre_list_patsfun_85__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_85(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
_ats2luapre_list_patsfun_89__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_89(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
_ats2luapre_list_patsfun_93__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_list_patsfun_93(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
ats2luapre_list_make_elt(arg0, arg1)

--
-- knd = 0
  local tmpret2
  local tmp7
  local tmplab, tmplab_lua
--
  -- __patsflab_list_make_elt
  tmp7 = nil
  tmpret2 = _ats2luapre_list_loop_3(arg1, arg0, tmp7)
  return tmpret2
end -- end-of-function


function
_ats2luapre_list_loop_3(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret3
  local tmp4
  local tmp5
  local tmp6
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_3
    tmp4 = ats2luapre_gt_int1_int1(arg0, 0)
    if(tmp4) then
      tmp5 = ats2luapre_sub_int1_int1(arg0, 1)
      tmp6 = [env0, arg1]
      -- ATStailcalseq_beg
      apy0 = tmp5
      apy1 = tmp6
      arg0 = apy0
      arg1 = apy1
      funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_3
      -- ATStailcalseq_end
     else
      tmpret3 = arg1
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret3  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_make_intrange_2(arg0, arg1)

--
-- knd = 0
  local tmpret8
  local tmplab, tmplab_lua
--
  -- __patsflab_list_make_intrange_2
  tmpret8 = ats2luapre_list_make_intrange_3(arg0, arg1, 1)
  return tmpret8
end -- end-of-function


function
ats2luapre_list_make_intrange_3(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret9
  local tmp20
  local tmp21
  local tmp22
  local tmp23
  local tmp24
  local tmp25
  local tmp26
  local tmp27
  local tmp28
  local tmp29
  local tmp30
  local tmp31
  local tmp32
  local tmp33
  local tmp34
  local tmp35
  local tmp36
  local tmp37
  local tmp38
  local tmp39
  local tmp40
  local tmplab, tmplab_lua
--
  -- __patsflab_list_make_intrange_3
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab6
      tmp20 = ats2luapre_gt_int0_int0(arg2, 0)
      if not ATSCKpat_bool(tmp20, true) then
        do tmplab_lua = 2 break; end
       end -- ifnthen
      tmp21 = ats2luapre_lt_int0_int0(arg0, arg1)
      if(tmp21) then
        tmp25 = ats2luapre_sub_int0_int0(arg1, arg0)
        tmp24 = ats2luapre_add_int0_int0(tmp25, arg2)
        tmp23 = ats2luapre_sub_int0_int0(tmp24, 1)
        tmp22 = ats2luapre_div_int0_int0(tmp23, arg2)
        tmp28 = ats2luapre_sub_int0_int0(tmp22, 1)
        tmp27 = ats2luapre_mul_int0_int0(tmp28, arg2)
        tmp26 = ats2luapre_add_int0_int0(arg0, tmp27)
        tmp29 = nil
        tmpret9 = _ats2luapre_list_loop1_6(tmp22, tmp26, arg2, tmp29)
       else
        tmpret9 = nil
      end -- end-of-if
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 2: -- __atstmplab7
      tmp30 = ats2luapre_lt_int0_int0(arg2, 0)
      if not ATSCKpat_bool(tmp30, true) then
        do tmplab_lua = 3 break; end
       end -- ifnthen
      tmp31 = ats2luapre_gt_int0_int0(arg0, arg1)
      if(tmp31) then
        tmp32 = ats2luapre_neg_int0(arg2)
        tmp36 = ats2luapre_sub_int0_int0(arg0, arg1)
        tmp35 = ats2luapre_add_int0_int0(tmp36, tmp32)
        tmp34 = ats2luapre_sub_int0_int0(tmp35, 1)
        tmp33 = ats2luapre_div_int0_int0(tmp34, tmp32)
        tmp39 = ats2luapre_sub_int0_int0(tmp33, 1)
        tmp38 = ats2luapre_mul_int0_int0(tmp39, tmp32)
        tmp37 = ats2luapre_sub_int0_int0(arg0, tmp38)
        tmp40 = nil
        tmpret9 = _ats2luapre_list_loop2_7(tmp33, tmp37, tmp32, tmp40)
       else
        tmpret9 = nil
      end -- end-of-if
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab8
      tmpret9 = nil
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret9
end -- end-of-function


function
_ats2luapre_list_loop1_6(arg0, arg1, arg2, arg3)

--
-- knd = 1
  local apy0
  local apy1
  local apy2
  local apy3
  local tmpret10
  local tmp11
  local tmp12
  local tmp13
  local tmp14
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop1_6
    tmp11 = ats2luapre_gt_int0_int0(arg0, 0)
    if(tmp11) then
      tmp12 = ats2luapre_sub_int0_int0(arg0, 1)
      tmp13 = ats2luapre_sub_int0_int0(arg1, arg2)
      tmp14 = [arg1, arg3]
      -- ATStailcalseq_beg
      apy0 = tmp12
      apy1 = tmp13
      apy2 = arg2
      apy3 = tmp14
      arg0 = apy0
      arg1 = apy1
      arg2 = apy2
      arg3 = apy3
      funlab_lua = 1 -- __patsflab__ats2luapre_list_loop1_6
      -- ATStailcalseq_end
     else
      tmpret10 = arg3
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret10  end
  end -- endwhile-fun
end -- end-of-function


function
_ats2luapre_list_loop2_7(arg0, arg1, arg2, arg3)

--
-- knd = 1
  local apy0
  local apy1
  local apy2
  local apy3
  local tmpret15
  local tmp16
  local tmp17
  local tmp18
  local tmp19
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop2_7
    tmp16 = ats2luapre_gt_int0_int0(arg0, 0)
    if(tmp16) then
      tmp17 = ats2luapre_sub_int0_int0(arg0, 1)
      tmp18 = ats2luapre_add_int0_int0(arg1, arg2)
      tmp19 = [arg1, arg3]
      -- ATStailcalseq_beg
      apy0 = tmp17
      apy1 = tmp18
      apy2 = arg2
      apy3 = tmp19
      arg0 = apy0
      arg1 = apy1
      arg2 = apy2
      arg3 = apy3
      funlab_lua = 1 -- __patsflab__ats2luapre_list_loop2_7
      -- ATStailcalseq_end
     else
      tmpret15 = arg3
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret15  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_length(arg0)

--
-- knd = 0
  local tmpret52
  local tmplab, tmplab_lua
--
  -- __patsflab_list_length
  tmpret52 = _ats2luapre_list_loop_14(arg0, 0)
  return tmpret52
end -- end-of-function


function
_ats2luapre_list_loop_14(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret53
  local tmp55
  local tmp56
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_14
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab13
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab14
        tmpret53 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab15
        case 4: -- __atstmplab16
        tmp55 = arg0[1]
        tmp56 = ats2luapre_add_int1_int1(arg1, 1)
        -- ATStailcalseq_beg
        apy0 = tmp55
        apy1 = tmp56
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_14
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret53  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_length_gte(arg0, arg1)

--
-- knd = 0
  local tmpret57
  local tmp58
  local tmplab, tmplab_lua
--
  -- __patsflab_list_length_gte
  tmp58 = ats2luapre_list_length_compare(arg0, arg1)
  tmpret57 = ats2luapre_gte_int1_int1(tmp58, 0)
  return tmpret57
end -- end-of-function


function
ats2luapre_list_length_compare(arg0, arg1)

--
-- knd = 0
  local tmpret59
  local tmplab, tmplab_lua
--
  -- __patsflab_list_length_compare
  tmpret59 = _ats2luapre_list_loop_17(arg0, arg1)
  return tmpret59
end -- end-of-function


function
_ats2luapre_list_loop_17(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret60
  local tmp61
  local tmp63
  local tmp64
  local tmp65
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_17
    tmp61 = ats2luapre_lt_int1_int1(arg1, 0)
    if(tmp61) then
      tmpret60 = 1
     else
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab17
          if (ATSCKptrisnull(arg0)) then
            do tmplab_lua = 3 break; end
          end -- ifthen
          case 2: -- __atstmplab18
          tmp63 = arg0[1]
          tmp64 = ats2luapre_sub_int1_int1(arg1, 1)
          -- ATStailcalseq_beg
          apy0 = tmp63
          apy1 = tmp64
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_17
          -- ATStailcalseq_end
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab19
          tmp65 = ats2luapre_eq_int1_int1(arg1, 0)
          if(tmp65) then
            tmpret60 = 0
           else
            tmpret60 = ats2luapre_neg_int1(1)
          end -- end-of-if
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret60  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_head(arg0)

--
-- knd = 0
  local tmpret66
  local tmp67
  local tmplab, tmplab_lua
--
  -- __patsflab_list_head
  tmp67 = arg0[0]
  tmpret66 = tmp67
  return tmpret66
end -- end-of-function


function
ats2luapre_list_tail(arg0)

--
-- knd = 0
  local tmpret68
  local tmp69
  local tmplab, tmplab_lua
--
  -- __patsflab_list_tail
  tmp69 = arg0[1]
  tmpret68 = tmp69
  return tmpret68
end -- end-of-function


function
ats2luapre_list_last(arg0)

--
-- knd = 1
  local apy0
  local tmpret70
  local tmp71
  local tmp72
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_last
    tmp71 = arg0[0]
    tmp72 = arg0[1]
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab20
        if (ATSCKptriscons(tmp72)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab21
        tmpret70 = tmp71
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab22
        case 4: -- __atstmplab23
        -- ATStailcalseq_beg
        apy0 = tmp72
        arg0 = apy0
        funlab_lua = 1 -- __patsflab_list_last
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret70  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_get_at(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret73
  local tmp74
  local tmp75
  local tmp76
  local tmp77
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_get_at
    tmp74 = ats2luapre_eq_int1_int1(arg1, 0)
    if(tmp74) then
      tmp75 = arg0[0]
      tmpret73 = tmp75
     else
      tmp76 = arg0[1]
      tmp77 = ats2luapre_sub_int1_int1(arg1, 1)
      -- ATStailcalseq_beg
      apy0 = tmp76
      apy1 = tmp77
      arg0 = apy0
      arg1 = apy1
      funlab_lua = 1 -- __patsflab_list_get_at
      -- ATStailcalseq_end
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret73  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_snoc(arg0, arg1)

--
-- knd = 0
  local tmpret78
  local tmp79
  local tmp80
  local tmplab, tmplab_lua
--
  -- __patsflab_list_snoc
  tmp80 = nil
  tmp79 = [arg1, tmp80]
  tmpret78 = ats2luapre_list_append(arg0, tmp79)
  return tmpret78
end -- end-of-function


function
ats2luapre_list_extend(arg0, arg1)

--
-- knd = 0
  local tmpret81
  local tmp82
  local tmp83
  local tmplab, tmplab_lua
--
  -- __patsflab_list_extend
  tmp83 = nil
  tmp82 = [arg1, tmp83]
  tmpret81 = ats2luapre_list_append(arg0, tmp82)
  return tmpret81
end -- end-of-function


function
ats2luapre_list_append(arg0, arg1)

--
-- knd = 0
  local tmpret84
  local tmp85
  local tmp86
  local tmp87
  local tmplab, tmplab_lua
--
  -- __patsflab_list_append
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab24
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab25
      tmpret84 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab26
      case 4: -- __atstmplab27
      tmp85 = arg0[0]
      tmp86 = arg0[1]
      tmp87 = ats2luapre_list_append(tmp86, arg1)
      tmpret84 = [tmp85, tmp87]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret84
end -- end-of-function


function
ats2luapre_mul_int_list(arg0, arg1)

--
-- knd = 0
  local tmpret88
  local tmp93
  local tmplab, tmplab_lua
--
  -- __patsflab_mul_int_list
  tmp93 = nil
  tmpret88 = _ats2luapre_list_loop_26(arg1, arg0, tmp93)
  return tmpret88
end -- end-of-function


function
_ats2luapre_list_loop_26(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret89
  local tmp90
  local tmp91
  local tmp92
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_26
    tmp90 = ats2luapre_gt_int1_int1(arg0, 0)
    if(tmp90) then
      tmp91 = ats2luapre_sub_int1_int1(arg0, 1)
      tmp92 = ats2luapre_list_append(env0, arg1)
      -- ATStailcalseq_beg
      apy0 = tmp91
      apy1 = tmp92
      arg0 = apy0
      arg1 = apy1
      funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_26
      -- ATStailcalseq_end
     else
      tmpret89 = arg1
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret89  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_reverse(arg0)

--
-- knd = 0
  local tmpret94
  local tmp95
  local tmplab, tmplab_lua
--
  -- __patsflab_list_reverse
  tmp95 = nil
  tmpret94 = ats2luapre_list_reverse_append(arg0, tmp95)
  return tmpret94
end -- end-of-function


function
ats2luapre_list_reverse_append(arg0, arg1)

--
-- knd = 0
  local tmpret96
  local tmplab, tmplab_lua
--
  -- __patsflab_list_reverse_append
  tmpret96 = _ats2luapre_list_loop_29(arg0, arg1)
  return tmpret96
end -- end-of-function


function
_ats2luapre_list_loop_29(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret97
  local tmp98
  local tmp99
  local tmp100
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_29
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab28
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab29
        tmpret97 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab30
        case 4: -- __atstmplab31
        tmp98 = arg0[0]
        tmp99 = arg0[1]
        tmp100 = [tmp98, arg1]
        -- ATStailcalseq_beg
        apy0 = tmp99
        apy1 = tmp100
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_29
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret97  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_concat(arg0)

--
-- knd = 0
  local tmpret101
  local tmplab, tmplab_lua
--
  -- __patsflab_list_concat
  tmpret101 = _ats2luapre_list_auxlst_31(arg0)
  return tmpret101
end -- end-of-function


function
_ats2luapre_list_auxlst_31(arg0)

--
-- knd = 0
  local tmpret102
  local tmp103
  local tmp104
  local tmp105
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_auxlst_31
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab32
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab33
      tmpret102 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab34
      case 4: -- __atstmplab35
      tmp103 = arg0[0]
      tmp104 = arg0[1]
      tmp105 = _ats2luapre_list_auxlst_31(tmp104)
      tmpret102 = ats2luapre_list_append(tmp103, tmp105)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret102
end -- end-of-function


function
ats2luapre_list_take(arg0, arg1)

--
-- knd = 0
  local tmpret106
  local tmp107
  local tmp108
  local tmp109
  local tmp110
  local tmp111
  local tmplab, tmplab_lua
--
  -- __patsflab_list_take
  tmp107 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp107) then
    tmp108 = arg0[0]
    tmp109 = arg0[1]
    tmp111 = ats2luapre_sub_int1_int1(arg1, 1)
    tmp110 = ats2luapre_list_take(tmp109, tmp111)
    tmpret106 = [tmp108, tmp110]
   else
    tmpret106 = nil
  end -- end-of-if
  return tmpret106
end -- end-of-function


function
ats2luapre_list_drop(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret112
  local tmp113
  local tmp114
  local tmp115
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_drop
    tmp113 = ats2luapre_gt_int1_int1(arg1, 0)
    if(tmp113) then
      tmp114 = arg0[1]
      tmp115 = ats2luapre_sub_int1_int1(arg1, 1)
      -- ATStailcalseq_beg
      apy0 = tmp114
      apy1 = tmp115
      arg0 = apy0
      arg1 = apy1
      funlab_lua = 1 -- __patsflab_list_drop
      -- ATStailcalseq_end
     else
      tmpret112 = arg0
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret112  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_split_at(arg0, arg1)

--
-- knd = 0
  local tmpret116
  local tmp117
  local tmp118
  local tmplab, tmplab_lua
--
  -- __patsflab_list_split_at
  tmp117 = ats2luapre_list_take(arg0, arg1)
  tmp118 = ats2luapre_list_drop(arg0, arg1)
  tmpret116 = [tmp117, tmp118]
  return tmpret116
end -- end-of-function


function
ats2luapre_list_insert_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret119
  local tmp120
  local tmp121
  local tmp122
  local tmp123
  local tmp124
  local tmplab, tmplab_lua
--
  -- __patsflab_list_insert_at
  tmp120 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp120) then
    tmp121 = arg0[0]
    tmp122 = arg0[1]
    tmp124 = ats2luapre_sub_int1_int1(arg1, 1)
    tmp123 = ats2luapre_list_insert_at(tmp122, tmp124, arg2)
    tmpret119 = [tmp121, tmp123]
   else
    tmpret119 = [arg2, arg0]
  end -- end-of-if
  return tmpret119
end -- end-of-function


function
ats2luapre_list_remove_at(arg0, arg1)

--
-- knd = 0
  local tmpret125
  local tmp126
  local tmp127
  local tmp128
  local tmp129
  local tmp130
  local tmplab, tmplab_lua
--
  -- __patsflab_list_remove_at
  tmp126 = arg0[0]
  tmp127 = arg0[1]
  tmp128 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp128) then
    tmp130 = ats2luapre_sub_int1_int1(arg1, 1)
    tmp129 = ats2luapre_list_remove_at(tmp127, tmp130)
    tmpret125 = [tmp126, tmp129]
   else
    tmpret125 = tmp127
  end -- end-of-if
  return tmpret125
end -- end-of-function


function
ats2luapre_list_takeout_at(arg0, arg1)

--
-- knd = 0
  local tmpret131
  local tmp132
  local tmp133
  local tmp134
  local tmp135
  local tmp136
  local tmp137
  local tmp138
  local tmp139
  local tmplab, tmplab_lua
--
  -- __patsflab_list_takeout_at
  tmp132 = arg0[0]
  tmp133 = arg0[1]
  tmp134 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp134) then
    tmp136 = ats2luapre_sub_int1_int1(arg1, 1)
    tmp135 = ats2luapre_list_takeout_at(tmp133, tmp136)
    tmp137 = tmp135[0]
    tmp138 = tmp135[1]
    tmp139 = [tmp132, tmp138]
    tmpret131 = [tmp137, tmp139]
   else
    tmpret131 = [tmp132, tmp133]
  end -- end-of-if
  return tmpret131
end -- end-of-function


function
ats2luapre_list_exists(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret140
  local tmp141
  local tmp142
  local tmp143
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_exists
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab36
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab37
        tmpret140 = false
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab38
        case 4: -- __atstmplab39
        tmp141 = arg0[0]
        tmp142 = arg0[1]
        tmp143 = arg1[0](arg1, tmp141)
        if(tmp143) then
          tmpret140 = true
         else
          -- ATStailcalseq_beg
          apy0 = tmp142
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list_exists
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret140  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_exists_method(arg0)

--
-- knd = 0
  local tmpret144
  local tmplab, tmplab_lua
--
  -- __patsflab_list_exists_method
  tmpret144 = _ats2luapre_list_patsfun_40__closurerize(arg0)
  return tmpret144
end -- end-of-function


function
_ats2luapre_list_patsfun_40(env0, arg0)

--
-- knd = 0
  local tmpret145
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_40
  tmpret145 = ats2luapre_list_exists(env0, arg0)
  return tmpret145
end -- end-of-function


function
ats2luapre_list_iexists(arg0, arg1)

--
-- knd = 0
  local tmpret146
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iexists
  tmpret146 = _ats2luapre_list_loop_42(arg1, 0, arg0)
  return tmpret146
end -- end-of-function


function
_ats2luapre_list_loop_42(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret147
  local tmp148
  local tmp149
  local tmp150
  local tmp151
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_42
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab40
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab41
        tmpret147 = false
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab42
        case 4: -- __atstmplab43
        tmp148 = arg1[0]
        tmp149 = arg1[1]
        tmp150 = env0[0](env0, arg0, tmp148)
        if(tmp150) then
          tmpret147 = true
         else
          tmp151 = ats2luapre_add_int1_int1(arg0, 1)
          -- ATStailcalseq_beg
          apy0 = tmp151
          apy1 = tmp149
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_42
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret147  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_iexists_method(arg0)

--
-- knd = 0
  local tmpret152
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iexists_method
  tmpret152 = _ats2luapre_list_patsfun_44__closurerize(arg0)
  return tmpret152
end -- end-of-function


function
_ats2luapre_list_patsfun_44(env0, arg0)

--
-- knd = 0
  local tmpret153
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_44
  tmpret153 = ats2luapre_list_iexists(env0, arg0)
  return tmpret153
end -- end-of-function


function
ats2luapre_list_forall(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret154
  local tmp155
  local tmp156
  local tmp157
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_forall
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab44
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab45
        tmpret154 = true
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab46
        case 4: -- __atstmplab47
        tmp155 = arg0[0]
        tmp156 = arg0[1]
        tmp157 = arg1[0](arg1, tmp155)
        if(tmp157) then
          -- ATStailcalseq_beg
          apy0 = tmp156
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list_forall
          -- ATStailcalseq_end
         else
          tmpret154 = false
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret154  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_forall_method(arg0)

--
-- knd = 0
  local tmpret158
  local tmplab, tmplab_lua
--
  -- __patsflab_list_forall_method
  tmpret158 = _ats2luapre_list_patsfun_47__closurerize(arg0)
  return tmpret158
end -- end-of-function


function
_ats2luapre_list_patsfun_47(env0, arg0)

--
-- knd = 0
  local tmpret159
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_47
  tmpret159 = ats2luapre_list_forall(env0, arg0)
  return tmpret159
end -- end-of-function


function
ats2luapre_list_iforall(arg0, arg1)

--
-- knd = 0
  local tmpret160
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iforall
  tmpret160 = _ats2luapre_list_loop_49(arg1, 0, arg0)
  return tmpret160
end -- end-of-function


function
_ats2luapre_list_loop_49(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret161
  local tmp162
  local tmp163
  local tmp164
  local tmp165
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_49
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab48
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab49
        tmpret161 = true
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab50
        case 4: -- __atstmplab51
        tmp162 = arg1[0]
        tmp163 = arg1[1]
        tmp164 = env0[0](env0, arg0, tmp162)
        if(tmp164) then
          tmp165 = ats2luapre_add_int1_int1(arg0, 1)
          -- ATStailcalseq_beg
          apy0 = tmp165
          apy1 = tmp163
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_49
          -- ATStailcalseq_end
         else
          tmpret161 = false
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret161  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_iforall_method(arg0)

--
-- knd = 0
  local tmpret166
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iforall_method
  tmpret166 = _ats2luapre_list_patsfun_51__closurerize(arg0)
  return tmpret166
end -- end-of-function


function
_ats2luapre_list_patsfun_51(env0, arg0)

--
-- knd = 0
  local tmpret167
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_51
  tmpret167 = ats2luapre_list_iforall(env0, arg0)
  return tmpret167
end -- end-of-function


function
ats2luapre_list_app(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list_app
  ats2luapre_list_foreach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_list_foreach(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmp170
  local tmp171
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list_foreach
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab52
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab53
        -- ATSINSmove_void
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab54
        case 4: -- __atstmplab55
        tmp170 = arg0[0]
        tmp171 = arg0[1]
        arg1[0](arg1, tmp170)
        -- ATStailcalseq_beg
        apy0 = tmp171
        apy1 = arg1
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab_list_foreach
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_foreach_method(arg0)

--
-- knd = 0
  local tmpret173
  local tmplab, tmplab_lua
--
  -- __patsflab_list_foreach_method
  tmpret173 = _ats2luapre_list_patsfun_55__closurerize(arg0)
  return tmpret173
end -- end-of-function


function
_ats2luapre_list_patsfun_55(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_55
  ats2luapre_list_foreach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_list_iforeach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iforeach
  _ats2luapre_list_aux_57(arg1, 0, arg0)
  return
end -- end-of-function


function
_ats2luapre_list_aux_57(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmp177
  local tmp178
  local tmp180
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_aux_57
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab56
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab57
        -- ATSINSmove_void
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab58
        case 4: -- __atstmplab59
        tmp177 = arg1[0]
        tmp178 = arg1[1]
        env0[0](env0, arg0, tmp177)
        tmp180 = ats2luapre_add_int1_int1(arg0, 1)
        -- ATStailcalseq_beg
        apy0 = tmp180
        apy1 = tmp178
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_aux_57
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_iforeach_method(arg0)

--
-- knd = 0
  local tmpret181
  local tmplab, tmplab_lua
--
  -- __patsflab_list_iforeach_method
  tmpret181 = _ats2luapre_list_patsfun_59__closurerize(arg0)
  return tmpret181
end -- end-of-function


function
_ats2luapre_list_patsfun_59(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_59
  ats2luapre_list_iforeach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_list_rforeach(arg0, arg1)

--
-- knd = 0
  local tmp184
  local tmp185
  local tmplab, tmplab_lua
--
  -- __patsflab_list_rforeach
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab60
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab61
      -- ATSINSmove_void
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab62
      case 4: -- __atstmplab63
      tmp184 = arg0[0]
      tmp185 = arg0[1]
      ats2luapre_list_rforeach(tmp185, arg1)
      arg1[0](arg1, tmp184)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return
end -- end-of-function


function
ats2luapre_list_rforeach_method(arg0)

--
-- knd = 0
  local tmpret187
  local tmplab, tmplab_lua
--
  -- __patsflab_list_rforeach_method
  tmpret187 = _ats2luapre_list_patsfun_62__closurerize(arg0)
  return tmpret187
end -- end-of-function


function
_ats2luapre_list_patsfun_62(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_62
  ats2luapre_list_rforeach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_list_filter(arg0, arg1)

--
-- knd = 0
  local tmpret189
  local tmplab, tmplab_lua
--
  -- __patsflab_list_filter
  tmpret189 = _ats2luapre_list_aux_64(arg1, arg0)
  return tmpret189
end -- end-of-function


function
_ats2luapre_list_aux_64(env0, arg0)

--
-- knd = 1
  local apy0
  local tmpret190
  local tmp191
  local tmp192
  local tmp193
  local tmp194
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_aux_64
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab64
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab65
        tmpret190 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab66
        case 4: -- __atstmplab67
        tmp191 = arg0[0]
        tmp192 = arg0[1]
        tmp193 = env0[0](env0, tmp191)
        if(tmp193) then
          tmp194 = _ats2luapre_list_aux_64(env0, tmp192)
          tmpret190 = [tmp191, tmp194]
         else
          -- ATStailcalseq_beg
          apy0 = tmp192
          arg0 = apy0
          funlab_lua = 1 -- __patsflab__ats2luapre_list_aux_64
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret190  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_filter_method(arg0)

--
-- knd = 0
  local tmpret195
  local tmplab, tmplab_lua
--
  -- __patsflab_list_filter_method
  tmpret195 = _ats2luapre_list_patsfun_66__closurerize(arg0)
  return tmpret195
end -- end-of-function


function
_ats2luapre_list_patsfun_66(env0, arg0)

--
-- knd = 0
  local tmpret196
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_66
  tmpret196 = ats2luapre_list_filter(env0, arg0)
  return tmpret196
end -- end-of-function


function
ats2luapre_list_labelize(arg0)

--
-- knd = 0
  local tmpret197
  local tmplab, tmplab_lua
--
  -- __patsflab_list_labelize
  tmpret197 = ats2luapre_list_imap(arg0, _ats2luapre_list_patsfun_68__closurerize())
  return tmpret197
end -- end-of-function


function
_ats2luapre_list_patsfun_68(arg0, arg1)

--
-- knd = 0
  local tmpret198
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_68
  tmpret198 = [arg0, arg1]
  return tmpret198
end -- end-of-function


function
ats2luapre_list_map(arg0, arg1)

--
-- knd = 0
  local tmpret199
  local tmplab, tmplab_lua
--
  -- __patsflab_list_map
  tmpret199 = _ats2luapre_list_aux_70(arg1, arg0)
  return tmpret199
end -- end-of-function


function
_ats2luapre_list_aux_70(env0, arg0)

--
-- knd = 0
  local tmpret200
  local tmp201
  local tmp202
  local tmp203
  local tmp204
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_aux_70
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab68
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab69
      tmpret200 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab70
      case 4: -- __atstmplab71
      tmp201 = arg0[0]
      tmp202 = arg0[1]
      tmp203 = env0[0](env0, tmp201)
      tmp204 = _ats2luapre_list_aux_70(env0, tmp202)
      tmpret200 = [tmp203, tmp204]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret200
end -- end-of-function


function
ats2luapre_list_map_method(arg0, arg1)

--
-- knd = 0
  local tmpret205
  local tmplab, tmplab_lua
--
  -- __patsflab_list_map_method
  tmpret205 = _ats2luapre_list_patsfun_72__closurerize(arg0)
  return tmpret205
end -- end-of-function


function
_ats2luapre_list_patsfun_72(env0, arg0)

--
-- knd = 0
  local tmpret206
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_72
  tmpret206 = ats2luapre_list_map(env0, arg0)
  return tmpret206
end -- end-of-function


function
ats2luapre_list_imap(arg0, arg1)

--
-- knd = 0
  local tmpret207
  local tmplab, tmplab_lua
--
  -- __patsflab_list_imap
  tmpret207 = _ats2luapre_list_aux_74(arg1, 0, arg0)
  return tmpret207
end -- end-of-function


function
_ats2luapre_list_aux_74(env0, arg0, arg1)

--
-- knd = 0
  local tmpret208
  local tmp209
  local tmp210
  local tmp211
  local tmp212
  local tmp213
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_aux_74
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab72
      if (ATSCKptriscons(arg1)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab73
      tmpret208 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab74
      case 4: -- __atstmplab75
      tmp209 = arg1[0]
      tmp210 = arg1[1]
      tmp211 = env0[0](env0, arg0, tmp209)
      tmp213 = ats2luapre_add_int1_int1(arg0, 1)
      tmp212 = _ats2luapre_list_aux_74(env0, tmp213, tmp210)
      tmpret208 = [tmp211, tmp212]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret208
end -- end-of-function


function
ats2luapre_list_imap_method(arg0, arg1)

--
-- knd = 0
  local tmpret214
  local tmplab, tmplab_lua
--
  -- __patsflab_list_imap_method
  tmpret214 = _ats2luapre_list_patsfun_76__closurerize(arg0)
  return tmpret214
end -- end-of-function


function
_ats2luapre_list_patsfun_76(env0, arg0)

--
-- knd = 0
  local tmpret215
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_76
  tmpret215 = ats2luapre_list_imap(env0, arg0)
  return tmpret215
end -- end-of-function


function
ats2luapre_list_map2(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret216
  local tmp217
  local tmp218
  local tmp219
  local tmp220
  local tmp221
  local tmp222
  local tmplab, tmplab_lua
--
  -- __patsflab_list_map2
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab76
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab77
      tmpret216 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab78
      case 4: -- __atstmplab79
      tmp217 = arg0[0]
      tmp218 = arg0[1]
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab80
          if (ATSCKptriscons(arg1)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab81
          tmpret216 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab82
          case 4: -- __atstmplab83
          tmp219 = arg1[0]
          tmp220 = arg1[1]
          tmp221 = arg2[0](arg2, tmp217, tmp219)
          tmp222 = ats2luapre_list_map2(tmp218, tmp220, arg2)
          tmpret216 = [tmp221, tmp222]
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret216
end -- end-of-function


function
ats2luapre_list_foldleft(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret223
  local tmplab, tmplab_lua
--
  -- __patsflab_list_foldleft
  tmpret223 = _ats2luapre_list_loop_79(arg2, arg1, arg0)
  return tmpret223
end -- end-of-function


function
_ats2luapre_list_loop_79(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret224
  local tmp225
  local tmp226
  local tmp227
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_79
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab84
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab85
        tmpret224 = arg0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab86
        case 4: -- __atstmplab87
        tmp225 = arg1[0]
        tmp226 = arg1[1]
        tmp227 = env0[0](env0, arg0, tmp225)
        -- ATStailcalseq_beg
        apy0 = tmp227
        apy1 = tmp226
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_79
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret224  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_foldleft_method(arg0, arg1)

--
-- knd = 0
  local tmpret228
  local tmplab, tmplab_lua
--
  -- __patsflab_list_foldleft_method
  tmpret228 = _ats2luapre_list_patsfun_81__closurerize(arg0, arg1)
  return tmpret228
end -- end-of-function


function
_ats2luapre_list_patsfun_81(env0, env1, arg0)

--
-- knd = 0
  local tmpret229
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_81
  tmpret229 = ats2luapre_list_foldleft(env0, env1, arg0)
  return tmpret229
end -- end-of-function


function
ats2luapre_list_ifoldleft(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret230
  local tmplab, tmplab_lua
--
  -- __patsflab_list_ifoldleft
  tmpret230 = _ats2luapre_list_loop_83(arg2, 0, arg1, arg0)
  return tmpret230
end -- end-of-function


function
_ats2luapre_list_loop_83(env0, arg0, arg1, arg2)

--
-- knd = 1
  local apy0
  local apy1
  local apy2
  local tmpret231
  local tmp232
  local tmp233
  local tmp234
  local tmp235
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_83
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab88
        if (ATSCKptriscons(arg2)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab89
        tmpret231 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab90
        case 4: -- __atstmplab91
        tmp232 = arg2[0]
        tmp233 = arg2[1]
        tmp234 = ats2luapre_add_int1_int1(arg0, 1)
        tmp235 = env0[0](env0, arg0, arg1, tmp232)
        -- ATStailcalseq_beg
        apy0 = tmp234
        apy1 = tmp235
        apy2 = tmp233
        arg0 = apy0
        arg1 = apy1
        arg2 = apy2
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_83
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret231  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_ifoldleft_method(arg0, arg1)

--
-- knd = 0
  local tmpret236
  local tmplab, tmplab_lua
--
  -- __patsflab_list_ifoldleft_method
  tmpret236 = _ats2luapre_list_patsfun_85__closurerize(arg0, arg1)
  return tmpret236
end -- end-of-function


function
_ats2luapre_list_patsfun_85(env0, env1, arg0)

--
-- knd = 0
  local tmpret237
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_85
  tmpret237 = ats2luapre_list_ifoldleft(env0, env1, arg0)
  return tmpret237
end -- end-of-function


function
ats2luapre_list_foldright(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret238
  local tmplab, tmplab_lua
--
  -- __patsflab_list_foldright
  tmpret238 = _ats2luapre_list_aux_87(arg1, arg0, arg2)
  return tmpret238
end -- end-of-function


function
_ats2luapre_list_aux_87(env0, arg0, arg1)

--
-- knd = 0
  local tmpret239
  local tmp240
  local tmp241
  local tmp242
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_aux_87
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab92
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab93
      tmpret239 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab94
      case 4: -- __atstmplab95
      tmp240 = arg0[0]
      tmp241 = arg0[1]
      tmp242 = _ats2luapre_list_aux_87(env0, tmp241, arg1)
      tmpret239 = env0[0](env0, tmp240, tmp242)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret239
end -- end-of-function


function
ats2luapre_list_foldright_method(arg0, arg1)

--
-- knd = 0
  local tmpret243
  local tmplab, tmplab_lua
--
  -- __patsflab_list_foldright_method
  tmpret243 = _ats2luapre_list_patsfun_89__closurerize(arg0, arg1)
  return tmpret243
end -- end-of-function


function
_ats2luapre_list_patsfun_89(env0, env1, arg0)

--
-- knd = 0
  local tmpret244
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_89
  tmpret244 = ats2luapre_list_foldright(env0, arg0, env1)
  return tmpret244
end -- end-of-function


function
ats2luapre_list_ifoldright(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret245
  local tmplab, tmplab_lua
--
  -- __patsflab_list_ifoldright
  tmpret245 = _ats2luapre_list_aux_91(arg1, 0, arg0, arg2)
  return tmpret245
end -- end-of-function


function
_ats2luapre_list_aux_91(env0, arg0, arg1, arg2)

--
-- knd = 0
  local tmpret246
  local tmp247
  local tmp248
  local tmp249
  local tmp250
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_aux_91
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab96
      if (ATSCKptriscons(arg1)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab97
      tmpret246 = arg2
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab98
      case 4: -- __atstmplab99
      tmp247 = arg1[0]
      tmp248 = arg1[1]
      tmp250 = ats2luapre_add_int1_int1(arg0, 1)
      tmp249 = _ats2luapre_list_aux_91(env0, tmp250, tmp248, arg2)
      tmpret246 = env0[0](env0, arg0, tmp247, tmp249)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret246
end -- end-of-function


function
ats2luapre_list_ifoldright_method(arg0, arg1)

--
-- knd = 0
  local tmpret251
  local tmplab, tmplab_lua
--
  -- __patsflab_list_ifoldright_method
  tmpret251 = _ats2luapre_list_patsfun_93__closurerize(arg0, arg1)
  return tmpret251
end -- end-of-function


function
_ats2luapre_list_patsfun_93(env0, env1, arg0)

--
-- knd = 0
  local tmpret252
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_patsfun_93
  tmpret252 = ats2luapre_list_ifoldright(env0, arg0, env1)
  return tmpret252
end -- end-of-function


function
ats2luapre_list_mergesort(arg0, arg1)

--
-- knd = 0
  local tmpret255
  local tmp274
  local tmplab, tmplab_lua
--
  -- __patsflab_list_mergesort
  tmp274 = ats2luapre_list_length(arg0)
  tmpret255 = _ats2luapre_list_msort_97(arg1, arg0, tmp274)
  return tmpret255
end -- end-of-function


function
_ats2luapre_list_msort_97(env0, arg0, arg1)

--
-- knd = 0
  local tmpret256
  local tmp257
  local tmp258
  local tmp259
  local tmp260
  local tmp261
  local tmp262
  local tmp263
  local tmp264
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_msort_97
  tmp257 = ats2luapre_lt_int1_int1(arg1, 2)
  if(tmp257) then
    tmpret256 = arg0
   else
    tmp258 = ats2luapre_half_int1(arg1)
    tmp259 = ats2luapre_list_split_at(arg0, tmp258)
    tmp260 = tmp259[0]
    tmp261 = tmp259[1]
    tmp262 = _ats2luapre_list_msort_97(env0, tmp260, tmp258)
    tmp264 = ats2luapre_sub_int1_int1(arg1, tmp258)
    tmp263 = _ats2luapre_list_msort_97(env0, tmp261, tmp264)
    tmpret256 = _ats2luapre_list_merge_98(env0, tmp262, tmp263)
  end -- end-of-if
  return tmpret256
end -- end-of-function


function
_ats2luapre_list_merge_98(env0, arg0, arg1)

--
-- knd = 0
  local tmpret265
  local tmp266
  local tmp267
  local tmp268
  local tmp269
  local tmp270
  local tmp271
  local tmp272
  local tmp273
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_merge_98
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab100
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab101
      tmpret265 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab102
      case 4: -- __atstmplab103
      tmp266 = arg0[0]
      tmp267 = arg0[1]
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab104
          if (ATSCKptriscons(arg1)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab105
          tmpret265 = arg0
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab106
          case 4: -- __atstmplab107
          tmp268 = arg1[0]
          tmp269 = arg1[1]
          tmp270 = env0[0](env0, tmp266, tmp268)
          tmp271 = ats2luapre_lte_int0_int0(tmp270, 0)
          if(tmp271) then
            tmp272 = _ats2luapre_list_merge_98(env0, tmp267, arg1)
            tmpret265 = [tmp266, tmp272]
           else
            tmp273 = _ats2luapre_list_merge_98(env0, arg0, tmp269)
            tmpret265 = [tmp268, tmp273]
          end -- end-of-if
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret265
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_ats2luapre_ML_list0_patsfun_29__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_29(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_32__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_32(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_35__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_35(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_38__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_38(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_42__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_42(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_45__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_45(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_48__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_48(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_51__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_51(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_55__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_55(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_58__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_58(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_65__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_65(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_68__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_68(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_list0_patsfun_74__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_ML_list0_patsfun_74(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
ats2luapre_ML_list0_head_opt(arg0)

--
-- knd = 0
  local tmpret7
  local tmp8
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_head_opt
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab6
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab7
      tmpret7 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab8
      case 4: -- __atstmplab9
      tmp8 = arg0[0]
      tmpret7 = [tmp8]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret7
end -- end-of-function


function
ats2luapre_ML_list0_tail_opt(arg0)

--
-- knd = 0
  local tmpret10
  local tmp12
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_tail_opt
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab10
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab11
      tmpret10 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab12
      case 4: -- __atstmplab13
      tmp12 = arg0[1]
      tmpret10 = [tmp12]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret10
end -- end-of-function


function
ats2luapre_ML_list0_length(arg0)

--
-- knd = 0
  local tmpret13
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_length
  tmpret13 = ats2luapre_list_length(arg0)
  return tmpret13
end -- end-of-function


function
ats2luapre_ML_list0_last_opt(arg0)

--
-- knd = 0
  local tmpret14
  local tmp18
  local tmp19
  local tmp20
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_last_opt
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab18
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab19
      tmpret14 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab20
      case 4: -- __atstmplab21
      tmp18 = arg0[0]
      tmp19 = arg0[1]
      tmp20 = _ats2luapre_ML_list0_loop_8(tmp18, tmp19)
      tmpret14 = [tmp20]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret14
end -- end-of-function


function
_ats2luapre_ML_list0_loop_8(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret15
  local tmp16
  local tmp17
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_ML_list0_loop_8
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab14
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab15
        tmpret15 = arg0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab16
        case 4: -- __atstmplab17
        tmp16 = arg1[0]
        tmp17 = arg1[1]
        -- ATStailcalseq_beg
        apy0 = tmp16
        apy1 = tmp17
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_ML_list0_loop_8
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret15  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_get_at_opt(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret21
  local tmp22
  local tmp23
  local tmp24
  local tmp25
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list0_get_at_opt
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab22
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab23
        tmpret21 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab24
        case 4: -- __atstmplab25
        tmp22 = arg0[0]
        tmp23 = arg0[1]
        tmp24 = ats2luapre_gt_int1_int1(arg1, 0)
        if(tmp24) then
          tmp25 = ats2luapre_sub_int1_int1(arg1, 1)
          -- ATStailcalseq_beg
          apy0 = tmp23
          apy1 = tmp25
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list0_get_at_opt
          -- ATStailcalseq_end
         else
          tmpret21 = [tmp22]
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret21  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_make_elt(arg0, arg1)

--
-- knd = 0
  local tmpret26
  local tmp27
  local tmp28
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_make_elt
  tmp27 = ats2luapre_gte_int1_int1(arg0, 0)
  if(tmp27) then
    tmp28 = ats2luapre_list_make_elt(arg0, arg1)
    tmpret26 = tmp28
   else
    tmpret26 = nil
  end -- end-of-if
  return tmpret26
end -- end-of-function


function
ats2luapre_ML_list0_make_intrange_2(arg0, arg1)

--
-- knd = 0
  local tmpret29
  local tmp30
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_make_intrange_2
  tmp30 = ats2luapre_list_make_intrange_2(arg0, arg1)
  tmpret29 = tmp30
  return tmpret29
end -- end-of-function


function
ats2luapre_ML_list0_make_intrange_3(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret31
  local tmp32
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_make_intrange_3
  tmp32 = ats2luapre_list_make_intrange_3(arg0, arg1, arg2)
  tmpret31 = tmp32
  return tmpret31
end -- end-of-function


function
ats2luapre_ML_list0_snoc(arg0, arg1)

--
-- knd = 0
  local tmpret44
  local tmp45
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_snoc
  tmp45 = ats2luapre_list_snoc(arg0, arg1)
  tmpret44 = tmp45
  return tmpret44
end -- end-of-function


function
ats2luapre_ML_list0_extend(arg0, arg1)

--
-- knd = 0
  local tmpret46
  local tmp47
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_extend
  tmp47 = ats2luapre_list_extend(arg0, arg1)
  tmpret46 = tmp47
  return tmpret46
end -- end-of-function


function
ats2luapre_ML_list0_append(arg0, arg1)

--
-- knd = 0
  local tmpret48
  local tmp49
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_append
  tmp49 = ats2luapre_list_append(arg0, arg1)
  tmpret48 = tmp49
  return tmpret48
end -- end-of-function


function
ats2luapre_ML_mul_int_list0(arg0, arg1)

--
-- knd = 0
  local tmpret50
  local tmp51
  local tmplab, tmplab_lua
--
  -- __patsflab_mul_int_list0
  tmp51 = ats2luapre_mul_int_list(arg0, arg1)
  tmpret50 = tmp51
  return tmpret50
end -- end-of-function


function
ats2luapre_ML_list0_reverse(arg0)

--
-- knd = 0
  local tmpret52
  local tmp53
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_reverse
  tmp53 = ats2luapre_list_reverse(arg0)
  tmpret52 = tmp53
  return tmpret52
end -- end-of-function


function
ats2luapre_ML_list0_reverse_append(arg0, arg1)

--
-- knd = 0
  local tmpret54
  local tmp55
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_reverse_append
  tmp55 = ats2luapre_list_reverse_append(arg0, arg1)
  tmpret54 = tmp55
  return tmpret54
end -- end-of-function


function
ats2luapre_ML_list0_concat(arg0)

--
-- knd = 0
  local tmpret56
  local tmp57
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_concat
  tmp57 = ats2luapre_list_concat(arg0)
  tmpret56 = tmp57
  return tmpret56
end -- end-of-function


function
ats2luapre_ML_list0_remove_at_opt(arg0, arg1)

--
-- knd = 0
  local tmpret58
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_remove_at_opt
  tmpret58 = _ats2luapre_ML_list0_aux_26(arg0, 0)
  return tmpret58
end -- end-of-function


function
_ats2luapre_ML_list0_aux_26(arg0, arg1)

--
-- knd = 0
  local tmpret59
  local tmp60
  local tmp61
  local tmp62
  local tmp63
  local tmp64
  local tmp65
  local tmp66
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_26
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab30
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab31
      tmpret59 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab32
      case 4: -- __atstmplab33
      tmp60 = arg0[0]
      tmp61 = arg0[1]
      tmp62 = ats2luapre_gt_int1_int1(arg1, 0)
      if(tmp62) then
        tmp64 = ats2luapre_sub_int1_int1(arg1, 1)
        tmp63 = _ats2luapre_ML_list0_aux_26(tmp61, tmp64)
        -- ATScaseofseq_beg
        tmplab_lua = 1
        while true do
          tmplab = tmplab_lua; tmplab_lua = 0
          do
            -- ATSbranchseq_beg
            case 1: -- __atstmplab34
            if (ATSCKptriscons(tmp63)) then
              do tmplab_lua = 4 break; end
            end -- ifthen
            case 2: -- __atstmplab35
            tmpret59 = nil
            break
            -- ATSbranchseq_end
            -- ATSbranchseq_beg
            case 3: -- __atstmplab36
            case 4: -- __atstmplab37
            tmp65 = tmp63[0]
            -- ATSINSfreecon(tmp63)
            tmp66 = [tmp60, tmp65]
            tmpret59 = [tmp66]
            break
            -- ATSbranchseq_end
          end -- end-of-switch
          if tmplab_lua == 0 then break end
        end -- endwhile
        -- ATScaseofseq_end
       else
        tmpret59 = [tmp61]
      end -- end-of-if
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret59
end -- end-of-function


function
ats2luapre_ML_list0_exists(arg0, arg1)

--
-- knd = 0
  local tmpret67
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_exists
  tmpret67 = ats2luapre_list_exists(arg0, arg1)
  return tmpret67
end -- end-of-function


function
ats2luapre_ML_list0_exists_method(arg0)

--
-- knd = 0
  local tmpret68
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_exists_method
  tmpret68 = _ats2luapre_ML_list0_patsfun_29__closurerize(arg0)
  return tmpret68
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_29(env0, arg0)

--
-- knd = 0
  local tmpret69
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_29
  tmpret69 = ats2luapre_ML_list0_exists(env0, arg0)
  return tmpret69
end -- end-of-function


function
ats2luapre_ML_list0_iexists(arg0, arg1)

--
-- knd = 0
  local tmpret70
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iexists
  tmpret70 = ats2luapre_list_iexists(arg0, arg1)
  return tmpret70
end -- end-of-function


function
ats2luapre_ML_list0_iexists_method(arg0)

--
-- knd = 0
  local tmpret71
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iexists_method
  tmpret71 = _ats2luapre_ML_list0_patsfun_32__closurerize(arg0)
  return tmpret71
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_32(env0, arg0)

--
-- knd = 0
  local tmpret72
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_32
  tmpret72 = ats2luapre_ML_list0_iexists(env0, arg0)
  return tmpret72
end -- end-of-function


function
ats2luapre_ML_list0_forall(arg0, arg1)

--
-- knd = 0
  local tmpret73
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_forall
  tmpret73 = ats2luapre_list_forall(arg0, arg1)
  return tmpret73
end -- end-of-function


function
ats2luapre_ML_list0_forall_method(arg0)

--
-- knd = 0
  local tmpret74
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_forall_method
  tmpret74 = _ats2luapre_ML_list0_patsfun_35__closurerize(arg0)
  return tmpret74
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_35(env0, arg0)

--
-- knd = 0
  local tmpret75
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_35
  tmpret75 = ats2luapre_ML_list0_forall(env0, arg0)
  return tmpret75
end -- end-of-function


function
ats2luapre_ML_list0_iforall(arg0, arg1)

--
-- knd = 0
  local tmpret76
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iforall
  tmpret76 = ats2luapre_list_iforall(arg0, arg1)
  return tmpret76
end -- end-of-function


function
ats2luapre_ML_list0_iforall_method(arg0)

--
-- knd = 0
  local tmpret77
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iforall_method
  tmpret77 = _ats2luapre_ML_list0_patsfun_38__closurerize(arg0)
  return tmpret77
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_38(env0, arg0)

--
-- knd = 0
  local tmpret78
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_38
  tmpret78 = ats2luapre_ML_list0_iforall(env0, arg0)
  return tmpret78
end -- end-of-function


function
ats2luapre_ML_list0_app(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_app
  ats2luapre_ML_list0_foreach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_list0_foreach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_foreach
  ats2luapre_list_foreach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_list0_foreach_method(arg0)

--
-- knd = 0
  local tmpret81
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_foreach_method
  tmpret81 = _ats2luapre_ML_list0_patsfun_42__closurerize(arg0)
  return tmpret81
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_42(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_42
  ats2luapre_ML_list0_foreach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_list0_iforeach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iforeach
  ats2luapre_list_iforeach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_list0_iforeach_method(arg0)

--
-- knd = 0
  local tmpret84
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_iforeach_method
  tmpret84 = _ats2luapre_ML_list0_patsfun_45__closurerize(arg0)
  return tmpret84
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_45(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_45
  ats2luapre_ML_list0_iforeach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_list0_rforeach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_rforeach
  ats2luapre_list_rforeach(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_list0_rforeach_method(arg0)

--
-- knd = 0
  local tmpret87
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_rforeach_method
  tmpret87 = _ats2luapre_ML_list0_patsfun_48__closurerize(arg0)
  return tmpret87
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_48(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_48
  ats2luapre_ML_list0_rforeach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_list0_filter(arg0, arg1)

--
-- knd = 0
  local tmpret89
  local tmp90
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_filter
  tmp90 = ats2luapre_list_filter(arg0, arg1)
  tmpret89 = tmp90
  return tmpret89
end -- end-of-function


function
ats2luapre_ML_list0_filter_method(arg0)

--
-- knd = 0
  local tmpret91
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_filter_method
  tmpret91 = _ats2luapre_ML_list0_patsfun_51__closurerize(arg0)
  return tmpret91
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_51(env0, arg0)

--
-- knd = 0
  local tmpret92
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_51
  tmpret92 = ats2luapre_ML_list0_filter(env0, arg0)
  return tmpret92
end -- end-of-function


function
ats2luapre_ML_list0_labelize(arg0)

--
-- knd = 0
  local tmpret93
  local tmp94
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_labelize
  tmp94 = ats2luapre_list_labelize(arg0)
  tmpret93 = tmp94
  return tmpret93
end -- end-of-function


function
ats2luapre_ML_list0_map(arg0, arg1)

--
-- knd = 0
  local tmpret95
  local tmp96
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_map
  tmp96 = ats2luapre_list_map(arg0, arg1)
  tmpret95 = tmp96
  return tmpret95
end -- end-of-function


function
ats2luapre_ML_list0_map_method(arg0, arg1)

--
-- knd = 0
  local tmpret97
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_map_method
  tmpret97 = _ats2luapre_ML_list0_patsfun_55__closurerize(arg0)
  return tmpret97
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_55(env0, arg0)

--
-- knd = 0
  local tmpret98
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_55
  tmpret98 = ats2luapre_ML_list0_map(env0, arg0)
  return tmpret98
end -- end-of-function


function
ats2luapre_ML_list0_imap(arg0, arg1)

--
-- knd = 0
  local tmpret99
  local tmp100
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_imap
  tmp100 = ats2luapre_list_imap(arg0, arg1)
  tmpret99 = tmp100
  return tmpret99
end -- end-of-function


function
ats2luapre_ML_list0_imap_method(arg0, arg1)

--
-- knd = 0
  local tmpret101
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_imap_method
  tmpret101 = _ats2luapre_ML_list0_patsfun_58__closurerize(arg0)
  return tmpret101
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_58(env0, arg0)

--
-- knd = 0
  local tmpret102
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_58
  tmpret102 = ats2luapre_ML_list0_imap(env0, arg0)
  return tmpret102
end -- end-of-function


function
ats2luapre_ML_list0_map2(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret103
  local tmp104
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_map2
  tmp104 = ats2luapre_list_map2(arg0, arg1, arg2)
  tmpret103 = tmp104
  return tmpret103
end -- end-of-function


function
ats2luapre_ML_list0_mapcons(arg0, arg1)

--
-- knd = 0
  local tmpret105
  local tmp106
  local tmp107
  local tmp108
  local tmp109
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_mapcons
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab38
      if (ATSCKptriscons(arg1)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab39
      tmpret105 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab40
      case 4: -- __atstmplab41
      tmp106 = arg1[0]
      tmp107 = arg1[1]
      tmp108 = [arg0, tmp106]
      tmp109 = ats2luapre_ML_list0_mapcons(arg0, tmp107)
      tmpret105 = [tmp108, tmp109]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret105
end -- end-of-function


function
ats2luapre_ML_list0_tabulate(arg0, arg1)

--
-- knd = 0
  local tmpret110
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_tabulate
  tmpret110 = _ats2luapre_ML_list0_auxmain_62(arg0, arg1, 0)
  return tmpret110
end -- end-of-function


function
_ats2luapre_ML_list0_auxmain_62(env0, env1, arg0)

--
-- knd = 0
  local tmpret111
  local tmp112
  local tmp113
  local tmp114
  local tmp115
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_auxmain_62
  tmp112 = ats2luapre_lt_int0_int0(arg0, env0)
  if(tmp112) then
    tmp113 = env1[0](env1, arg0)
    tmp115 = ats2luapre_add_int0_int0(arg0, 1)
    tmp114 = _ats2luapre_ML_list0_auxmain_62(env0, env1, tmp115)
    tmpret111 = [tmp113, tmp114]
   else
    tmpret111 = nil
  end -- end-of-if
  return tmpret111
end -- end-of-function


function
ats2luapre_ML_list0_find_opt(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret116
  local tmp117
  local tmp118
  local tmp119
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list0_find_opt
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab42
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab43
        tmpret116 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab44
        case 4: -- __atstmplab45
        tmp117 = arg0[0]
        tmp118 = arg0[1]
        tmp119 = arg1[0](arg1, tmp117)
        if(tmp119) then
          tmpret116 = [tmp117]
         else
          -- ATStailcalseq_beg
          apy0 = tmp118
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list0_find_opt
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret116  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_find_opt_method(arg0)

--
-- knd = 0
  local tmpret120
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_find_opt_method
  tmpret120 = _ats2luapre_ML_list0_patsfun_65__closurerize(arg0)
  return tmpret120
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_65(env0, arg0)

--
-- knd = 0
  local tmpret121
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_65
  tmpret121 = ats2luapre_ML_list0_find_opt(env0, arg0)
  return tmpret121
end -- end-of-function


function
ats2luapre_ML_list0_find_suffix(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret122
  local tmp124
  local tmp125
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list0_find_suffix
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab46
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab47
        tmpret122 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab48
        case 4: -- __atstmplab49
        tmp124 = arg0[1]
        tmp125 = arg1[0](arg1, arg0)
        if(tmp125) then
          tmpret122 = arg0
         else
          -- ATStailcalseq_beg
          apy0 = tmp124
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list0_find_suffix
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret122  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_find_suffix_method(arg0)

--
-- knd = 0
  local tmpret126
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_find_suffix_method
  tmpret126 = _ats2luapre_ML_list0_patsfun_68__closurerize(arg0)
  return tmpret126
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_68(env0, arg0)

--
-- knd = 0
  local tmpret127
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_68
  tmpret127 = ats2luapre_ML_list0_find_suffix(env0, arg0)
  return tmpret127
end -- end-of-function


function
ats2luapre_ML_list0_zip(arg0, arg1)

--
-- knd = 0
  local tmpret128
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_zip
  tmpret128 = _ats2luapre_ML_list0_aux_70(arg0, arg1)
  return tmpret128
end -- end-of-function


function
_ats2luapre_ML_list0_aux_70(arg0, arg1)

--
-- knd = 0
  local tmpret129
  local tmp130
  local tmp131
  local tmp132
  local tmp133
  local tmp134
  local tmp135
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_70
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab50
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab51
      tmpret129 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab52
      case 4: -- __atstmplab53
      tmp130 = arg0[0]
      tmp131 = arg0[1]
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab54
          if (ATSCKptriscons(arg1)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab55
          tmpret129 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab56
          case 4: -- __atstmplab57
          tmp132 = arg1[0]
          tmp133 = arg1[1]
          tmp134 = [tmp130, tmp132]
          tmp135 = _ats2luapre_ML_list0_aux_70(tmp131, tmp133)
          tmpret129 = [tmp134, tmp135]
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret129
end -- end-of-function


function
ats2luapre_ML_list0_zipwith(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret136
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_zipwith
  tmpret136 = _ats2luapre_ML_list0_aux_72(arg0, arg1, arg2)
  return tmpret136
end -- end-of-function


function
_ats2luapre_ML_list0_aux_72(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret137
  local tmp138
  local tmp139
  local tmp140
  local tmp141
  local tmp142
  local tmp143
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_72
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab58
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab59
      tmpret137 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab60
      case 4: -- __atstmplab61
      tmp138 = arg0[0]
      tmp139 = arg0[1]
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab62
          if (ATSCKptriscons(arg1)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab63
          tmpret137 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab64
          case 4: -- __atstmplab65
          tmp140 = arg1[0]
          tmp141 = arg1[1]
          tmp142 = arg2[0](arg2, tmp138, tmp140)
          tmp143 = _ats2luapre_ML_list0_aux_72(tmp139, tmp141, arg2)
          tmpret137 = [tmp142, tmp143]
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret137
end -- end-of-function


function
ats2luapre_ML_list0_zipwith_method(arg0, arg1)

--
-- knd = 0
  local tmpret144
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_zipwith_method
  tmpret144 = _ats2luapre_ML_list0_patsfun_74__closurerize(arg0, arg1)
  return tmpret144
end -- end-of-function


function
_ats2luapre_ML_list0_patsfun_74(env0, env1, arg0)

--
-- knd = 0
  local tmpret145
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_patsfun_74
  tmpret145 = ats2luapre_ML_list0_zipwith(env0, env1, arg0)
  return tmpret145
end -- end-of-function


function
ats2luapre_ML_list0_foldleft(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret146
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_foldleft
  tmpret146 = _ats2luapre_ML_list0_aux_76(arg2, arg1, arg0)
  return tmpret146
end -- end-of-function


function
_ats2luapre_ML_list0_aux_76(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret147
  local tmp148
  local tmp149
  local tmp150
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_ML_list0_aux_76
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab66
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab67
        tmpret147 = arg0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab68
        case 4: -- __atstmplab69
        tmp148 = arg1[0]
        tmp149 = arg1[1]
        tmp150 = env0[0](env0, arg0, tmp148)
        -- ATStailcalseq_beg
        apy0 = tmp150
        apy1 = tmp149
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_ML_list0_aux_76
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret147  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_foldright(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret151
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_foldright
  tmpret151 = _ats2luapre_ML_list0_aux_78(arg1, arg2, arg0, arg2)
  return tmpret151
end -- end-of-function


function
_ats2luapre_ML_list0_aux_78(env0, env1, arg0, arg1)

--
-- knd = 0
  local tmpret152
  local tmp153
  local tmp154
  local tmp155
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_78
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab70
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab71
      tmpret152 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab72
      case 4: -- __atstmplab73
      tmp153 = arg0[0]
      tmp154 = arg0[1]
      tmp155 = _ats2luapre_ML_list0_aux_78(env0, env1, tmp154, env1)
      tmpret152 = env0[0](env0, tmp153, tmp155)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret152
end -- end-of-function


function
ats2luapre_ML_list0_sort_2(arg0, arg1)

--
-- knd = 0
  local tmpret158
  local tmp159
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_sort_2
  tmp159 = ats2luapre_list_sort_2(arg0, arg1)
  tmpret158 = tmp159
  return tmpret158
end -- end-of-function


function
ats2luapre_ML_list0_mergesort(arg0, arg1)

--
-- knd = 0
  local tmpret160
  local tmp161
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_mergesort
  tmp161 = ats2luapre_list_mergesort(arg0, arg1)
  tmpret160 = tmp161
  return tmpret160
end -- end-of-function


function
ats2luapre_ML_streamize_list0_zip(arg0, arg1)

--
-- knd = 0
  local tmpret162
  local tmplab, tmplab_lua
--
  -- __patsflab_streamize_list0_zip
  tmpret162 = ats2luapre_streamize_list_zip(arg0, arg1)
  return tmpret162
end -- end-of-function


function
ats2luapre_ML_streamize_list0_cross(arg0, arg1)

--
-- knd = 0
  local tmpret163
  local tmplab, tmplab_lua
--
  -- __patsflab_streamize_list0_cross
  tmpret163 = ats2luapre_streamize_list_cross(arg0, arg1)
  return tmpret163
end -- end-of-function


function
ats2luapre_ML_list0_head_exn(arg0)

--
-- knd = 0
  local tmpret167
  local tmp168
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_head_exn
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab74
      if (ATSCKptrisnull(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab75
      tmp168 = arg0[0]
      tmpret167 = tmp168
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab76
      case 4: -- __atstmplab77
      tmpret167 = ats2luapre_ListSubscriptExn_throw()
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret167
end -- end-of-function


function
ats2luapre_ML_list0_tail_exn(arg0)

--
-- knd = 0
  local tmpret170
  local tmp172
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_tail_exn
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab78
      if (ATSCKptrisnull(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab79
      tmp172 = arg0[1]
      tmpret170 = tmp172
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab80
      case 4: -- __atstmplab81
      tmpret170 = ats2luapre_ListSubscriptExn_throw()
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret170
end -- end-of-function


function
ats2luapre_ML_list0_get_at_exn(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret173
  local tmp174
  local tmp175
  local tmp176
  local tmp177
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_list0_get_at_exn
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab82
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab83
        tmpret173 = ats2luapre_ListSubscriptExn_throw()
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab84
        case 4: -- __atstmplab85
        tmp174 = arg0[0]
        tmp175 = arg0[1]
        tmp176 = ats2luapre_gt_int1_int1(arg1, 0)
        if(tmp176) then
          tmp177 = ats2luapre_sub_int1_int1(arg1, 1)
          -- ATStailcalseq_beg
          apy0 = tmp175
          apy1 = tmp177
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_list0_get_at_exn
          -- ATStailcalseq_end
         else
          tmpret173 = tmp174
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret173  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_ML_list0_insert_at_exn(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret178
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_insert_at_exn
  tmpret178 = _ats2luapre_ML_list0_aux_92(arg2, arg0, arg1)
  return tmpret178
end -- end-of-function


function
_ats2luapre_ML_list0_aux_92(env0, arg0, arg1)

--
-- knd = 0
  local tmpret179
  local tmp180
  local tmp181
  local tmp182
  local tmp183
  local tmp184
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_92
  tmp180 = ats2luapre_gt_int1_int1(arg1, 0)
  if(tmp180) then
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab86
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab87
        tmpret179 = ats2luapre_ListSubscriptExn_throw()
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab88
        case 4: -- __atstmplab89
        tmp181 = arg0[0]
        tmp182 = arg0[1]
        tmp184 = ats2luapre_sub_int1_int1(arg1, 1)
        tmp183 = _ats2luapre_ML_list0_aux_92(env0, tmp182, tmp184)
        tmpret179 = [tmp181, tmp183]
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
   else
    tmpret179 = [env0, arg0]
  end -- end-of-if
  return tmpret179
end -- end-of-function


function
ats2luapre_ML_list0_remove_at_exn(arg0, arg1)

--
-- knd = 0
  local tmpret185
  local tmplab, tmplab_lua
--
  -- __patsflab_list0_remove_at_exn
  tmpret185 = _ats2luapre_ML_list0_aux_94(arg0, arg1)
  return tmpret185
end -- end-of-function


function
_ats2luapre_ML_list0_aux_94(arg0, arg1)

--
-- knd = 0
  local tmpret186
  local tmp187
  local tmp188
  local tmp189
  local tmp190
  local tmp191
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_list0_aux_94
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab90
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab91
      tmpret186 = ats2luapre_ListSubscriptExn_throw()
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab92
      case 4: -- __atstmplab93
      tmp187 = arg0[0]
      tmp188 = arg0[1]
      tmp189 = ats2luapre_gt_int1_int1(arg1, 0)
      if(tmp189) then
        tmp191 = ats2luapre_sub_int1_int1(arg1, 1)
        tmp190 = _ats2luapre_ML_list0_aux_94(tmp188, tmp191)
        tmpret186 = [tmp187, tmp190]
       else
        tmpret186 = tmp188
      end -- end-of-if
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret186
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
ats2luapre_list_vt_length(arg0)

--
-- knd = 0
  local tmpret2
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_length
  tmpret2 = _ats2luapre_list_loop_3(arg0, 0)
  return tmpret2
end -- end-of-function


function
_ats2luapre_list_loop_3(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret3
  local tmp5
  local tmp6
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_3
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab8
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab9
        tmpret3 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab10
        case 4: -- __atstmplab11
        tmp5 = arg0[1]
        tmp6 = ats2luapre_add_int1_int1(arg1, 1)
        -- ATStailcalseq_beg
        apy0 = tmp5
        apy1 = tmp6
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_3
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret3  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_list_vt_snoc(arg0, arg1)

--
-- knd = 0
  local tmpret7
  local tmp8
  local tmp9
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_snoc
  tmp9 = nil
  tmp8 = [arg1, tmp9]
  tmpret7 = ats2luapre_list_vt_append(arg0, tmp8)
  return tmpret7
end -- end-of-function


function
ats2luapre_list_vt_extend(arg0, arg1)

--
-- knd = 0
  local tmpret10
  local tmp11
  local tmp12
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_extend
  tmp12 = nil
  tmp11 = [arg1, tmp12]
  tmpret10 = ats2luapre_list_vt_append(arg0, tmp11)
  return tmpret10
end -- end-of-function


function
ats2luapre_list_vt_append(arg0, arg1)

--
-- knd = 0
  local tmpret13
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_append
  tmpret13 = _ats2luapre_list_aux_7(arg0, arg1)
  return tmpret13
end -- end-of-function


function
_ats2luapre_list_aux_7(arg0, arg1)

--
-- knd = 0
  local tmpret14
  local tmp15
  local tmp16
  local tmp17
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_list_aux_7
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab12
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab13
      tmpret14 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab14
      case 4: -- __atstmplab15
      tmp15 = arg0[0]
      tmp16 = arg0[1]
      -- ATSINSfreecon(arg0)
      tmp17 = _ats2luapre_list_aux_7(tmp16, arg1)
      tmpret14 = [tmp15, tmp17]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret14
end -- end-of-function


function
ats2luapre_list_vt_reverse(arg0)

--
-- knd = 0
  local tmpret18
  local tmp19
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_reverse
  tmp19 = nil
  tmpret18 = ats2luapre_list_vt_reverse_append(arg0, tmp19)
  return tmpret18
end -- end-of-function


function
ats2luapre_list_vt_reverse_append(arg0, arg1)

--
-- knd = 0
  local tmpret20
  local tmplab, tmplab_lua
--
  -- __patsflab_list_vt_reverse_append
  tmpret20 = _ats2luapre_list_loop_10(arg0, arg1)
  return tmpret20
end -- end-of-function


function
_ats2luapre_list_loop_10(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret21
  local tmp22
  local tmp23
  local tmp24
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_list_loop_10
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab16
        if (ATSCKptriscons(arg0)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab17
        tmpret21 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab18
        case 4: -- __atstmplab19
        tmp22 = arg0[0]
        tmp23 = arg0[1]
        -- ATSINSfreecon(arg0)
        tmp24 = [tmp22, arg1]
        -- ATStailcalseq_beg
        apy0 = tmp23
        apy1 = tmp24
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_list_loop_10
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret21  end
  end -- endwhile-fun
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_ats2luapre_ML_matrix0_patsfun_9__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_matrix0_patsfun_9(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_matrix0_patsfun_11__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_matrix0_patsfun_11(cenv[1], arg0) end, env0}
end


function
_ats2luapre_ML_matrix0_patsfun_13__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_ML_matrix0_patsfun_13(cenv[1], arg0) end, env0}
end


function
ats2luapre_ML_matrix0_make_elt(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_make_elt
  tmpret0 = ats2luapre_mtrxszref_make_elt(arg0, arg1, arg2)
  return tmpret0
end -- end-of-function


function
ats2luapre_ML_matrix0_nrow(arg0)

--
-- knd = 0
  local tmpret1
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_nrow
  tmpret1 = ats2luapre_mtrxszref_get_nrow(arg0)
  return tmpret1
end -- end-of-function


function
ats2luapre_ML_matrix0_ncol(arg0)

--
-- knd = 0
  local tmpret2
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_ncol
  tmpret2 = ats2luapre_mtrxszref_get_ncol(arg0)
  return tmpret2
end -- end-of-function


function
ats2luapre_ML_matrix0_get_at(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret3
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_get_at
  tmpret3 = ats2luapre_mtrxszref_get_at(arg0, arg1, arg2)
  return tmpret3
end -- end-of-function


function
ats2luapre_ML_matrix0_set_at(arg0, arg1, arg2, arg3)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_set_at
  ats2luapre_mtrxszref_set_at(arg0, arg1, arg2, arg3)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach
  ats2luapre_mtrxszref_foreach_cloref(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach_row(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach_row
  ats2luapre_mtrxszref_foreach_row_cloref(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach_col(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach_col
  ats2luapre_mtrxszref_foreach_col_cloref(arg0, arg1)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach_method(arg0)

--
-- knd = 0
  local tmpret8
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach_method
  tmpret8 = _ats2luapre_ML_matrix0_patsfun_9__closurerize(arg0)
  return tmpret8
end -- end-of-function


function
_ats2luapre_ML_matrix0_patsfun_9(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_matrix0_patsfun_9
  ats2luapre_ML_matrix0_foreach(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach_row_method(arg0)

--
-- knd = 0
  local tmpret10
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach_row_method
  tmpret10 = _ats2luapre_ML_matrix0_patsfun_11__closurerize(arg0)
  return tmpret10
end -- end-of-function


function
_ats2luapre_ML_matrix0_patsfun_11(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_matrix0_patsfun_11
  ats2luapre_ML_matrix0_foreach_row(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_foreach_col_method(arg0)

--
-- knd = 0
  local tmpret12
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_foreach_col_method
  tmpret12 = _ats2luapre_ML_matrix0_patsfun_13__closurerize(arg0)
  return tmpret12
end -- end-of-function


function
_ats2luapre_ML_matrix0_patsfun_13(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_ML_matrix0_patsfun_13
  ats2luapre_ML_matrix0_foreach_col(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_ML_matrix0_tabulate(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret14
  local tmplab, tmplab_lua
--
  -- __patsflab_matrix0_tabulate
  tmpret14 = ats2luapre_mtrxszref_tabulate_cloref(arg0, arg1, arg2)
  return tmpret14
end -- end-of-function


function
ats2luapre_ML_cbind_matrix0_matrix0(arg0, arg1)

--
-- knd = 0
  local tmpret15
  local tmp16
  local tmp17
  local tmp18
  local tmp19
  local tmp21
  local tmp22
  local tmp23
  local tmp24
  local tmp25
  local tmplab, tmplab_lua
--
  -- __patsflab_cbind_matrix0_matrix0
  tmp16 = ats2luapre_mtrxszref_get_nrow(arg0)
  tmp17 = ats2luapre_mtrxszref_get_nrow(arg1)
  tmp18 = ats2luapre_mtrxszref_get_ncol(arg0)
  tmp19 = ats2luapre_mtrxszref_get_ncol(arg1)
  tmp21 = ats2luapre_eq_int1_int1(tmp16, tmp17)
  atspre_assert_errmsg_bool1(tmp21, "/home/calvin/code/ATS2-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/ML/matrix0.dats: 1506(line=92, offs=10) -- 1524(line=92, offs=28)")
  tmp22 = ats2luapre_mtrxszref_get_matrixref(arg0)
  tmp23 = ats2luapre_mtrxszref_get_matrixref(arg1)
  tmp24 = ats2luapre_cbind_matrixref_matrixref(tmp22, tmp23, tmp16, tmp18, tmp19)
  tmp25 = ats2luapre_add_int1_int1(tmp18, tmp19)
  tmpret15 = ats2luapre_mtrxszref_make_matrixref(tmp24, tmp16, tmp25)
  return tmpret15
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
ats2luapre_option_some(arg0)

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_option_some
  tmpret0 = [arg0]
  return tmpret0
end -- end-of-function


function
ats2luapre_option_none()

--
-- knd = 0
  local tmpret1
  local tmplab, tmplab_lua
--
  -- __patsflab_option_none
  tmpret1 = nil
  return tmpret1
end -- end-of-function


function
ats2luapre_option_unsome(arg0)

--
-- knd = 0
  local tmpret2
  local tmp3
  local tmplab, tmplab_lua
--
  -- __patsflab_option_unsome
  tmp3 = arg0[0]
  tmpret2 = tmp3
  return tmpret2
end -- end-of-function


function
ats2luapre_option_is_some(arg0)

--
-- knd = 0
  local tmpret4
  local tmplab, tmplab_lua
--
  -- __patsflab_option_is_some
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab0
      if (ATSCKptrisnull(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab1
      tmpret4 = true
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab2
      case 4: -- __atstmplab3
      tmpret4 = false
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret4
end -- end-of-function


function
ats2luapre_option_is_none(arg0)

--
-- knd = 0
  local tmpret5
  local tmplab, tmplab_lua
--
  -- __patsflab_option_is_none
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab4
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab5
      tmpret5 = true
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab6
      case 4: -- __atstmplab7
      tmpret5 = false
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret5
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
ats2luapre_qlistref_make_nil()

--
-- knd = 0
  local tmpret0
  local tmp1
  local tmp2
  local tmp3
  local tmp4
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_make_nil
  tmp2 = nil
  tmp1 = ats2luapre_ref(tmp2)
  tmp4 = nil
  tmp3 = ats2luapre_ref(tmp4)
  tmpret0 = [tmp1, tmp3]
  return tmpret0
end -- end-of-function


function
ats2luapre_qlistref_length(arg0)

--
-- knd = 0
  local tmpret5
  local tmp6
  local tmp7
  local tmp8
  local tmp9
  local tmp10
  local tmp11
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_length
  tmp6 = arg0[0]
  tmp7 = arg0[1]
  tmp9 = ats2luapre_ref_get_elt(tmp6)
  tmp8 = ats2luapre_list_length(tmp9)
  tmp11 = ats2luapre_ref_get_elt(tmp7)
  tmp10 = ats2luapre_list_length(tmp11)
  tmpret5 = ats2luapre_add_int1_int1(tmp8, tmp10)
  return tmpret5
end -- end-of-function


function
ats2luapre_qlistref_enqueue(arg0, arg1)

--
-- knd = 0
  local tmp13
  local tmp14
  local tmp15
  local tmp16
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_enqueue
  tmp13 = arg0[0]
  tmp14 = arg0[1]
  tmp16 = ats2luapre_ref_get_elt(tmp13)
  tmp15 = [arg1, tmp16]
  ats2luapre_ref_set_elt(tmp13, tmp15)
  return
end -- end-of-function


function
ats2luapre_qlistref_dequeue_opt(arg0)

--
-- knd = 0
  local tmpret17
  local tmp18
  local tmp19
  local tmp20
  local tmp21
  local tmp22
  local tmp23
  local tmp25
  local tmp26
  local tmp27
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_dequeue_opt
  tmp18 = arg0[0]
  tmp19 = arg0[1]
  tmp20 = ats2luapre_ref_get_elt(tmp19)
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab0
      if (ATSCKptriscons(tmp20)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab1
      tmp23 = ats2luapre_ref_get_elt(tmp18)
      tmp25 = nil
      ats2luapre_ref_set_elt(tmp18, tmp25)
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab4
          if (ATSCKptriscons(tmp23)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab5
          tmpret17 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab6
          case 4: -- __atstmplab7
          tmp26 = tmp23[0]
          tmp27 = tmp23[1]
          ats2luapre_ref_set_elt(tmp19, tmp27)
          tmpret17 = [tmp26]
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab2
      case 4: -- __atstmplab3
      tmp21 = tmp20[0]
      tmp22 = tmp20[1]
      ats2luapre_ref_set_elt(tmp19, tmp22)
      tmpret17 = [tmp21]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret17
end -- end-of-function


function
ats2luapre_qlistref_foldleft(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret30
  local tmp31
  local tmp32
  local tmp41
  local tmp42
  local tmp43
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_foldleft
  tmp31 = arg0[0]
  tmp32 = arg0[1]
  tmp41 = ats2luapre_ref_get_elt(tmp31)
  tmp43 = ats2luapre_ref_get_elt(tmp32)
  tmp42 = _ats2luapre_qlistref_auxl_5(arg2, arg1, tmp43)
  tmpret30 = _ats2luapre_qlistref_auxr_6(arg2, tmp41, tmp42)
  return tmpret30
end -- end-of-function


function
_ats2luapre_qlistref_auxl_5(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret33
  local tmp34
  local tmp35
  local tmp36
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_qlistref_auxl_5
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab8
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab9
        tmpret33 = arg0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab10
        case 4: -- __atstmplab11
        tmp34 = arg1[0]
        tmp35 = arg1[1]
        tmp36 = env0[0](env0, arg0, tmp34)
        -- ATStailcalseq_beg
        apy0 = tmp36
        apy1 = tmp35
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_qlistref_auxl_5
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret33  end
  end -- endwhile-fun
end -- end-of-function


function
_ats2luapre_qlistref_auxr_6(env0, arg0, arg1)

--
-- knd = 0
  local tmpret37
  local tmp38
  local tmp39
  local tmp40
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_qlistref_auxr_6
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab12
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab13
      tmpret37 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab14
      case 4: -- __atstmplab15
      tmp38 = arg0[0]
      tmp39 = arg0[1]
      tmp40 = _ats2luapre_qlistref_auxr_6(env0, tmp39, arg1)
      tmpret37 = env0[0](env0, tmp40, tmp38)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret37
end -- end-of-function


function
ats2luapre_qlistref_foldright(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret44
  local tmp45
  local tmp46
  local tmp55
  local tmp56
  local tmp57
  local tmplab, tmplab_lua
--
  -- __patsflab_qlistref_foldright
  tmp45 = arg0[0]
  tmp46 = arg0[1]
  tmp55 = ats2luapre_ref_get_elt(tmp46)
  tmp57 = ats2luapre_ref_get_elt(tmp45)
  tmp56 = _ats2luapre_qlistref_auxl_8(arg1, arg2, tmp57)
  tmpret44 = _ats2luapre_qlistref_auxr_9(arg1, tmp55, tmp56)
  return tmpret44
end -- end-of-function


function
_ats2luapre_qlistref_auxl_8(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret47
  local tmp48
  local tmp49
  local tmp50
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_qlistref_auxl_8
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab16
        if (ATSCKptriscons(arg1)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab17
        tmpret47 = arg0
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab18
        case 4: -- __atstmplab19
        tmp48 = arg1[0]
        tmp49 = arg1[1]
        tmp50 = env0[0](env0, tmp48, arg0)
        -- ATStailcalseq_beg
        apy0 = tmp50
        apy1 = tmp49
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_qlistref_auxl_8
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret47  end
  end -- endwhile-fun
end -- end-of-function


function
_ats2luapre_qlistref_auxr_9(env0, arg0, arg1)

--
-- knd = 0
  local tmpret51
  local tmp52
  local tmp53
  local tmp54
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_qlistref_auxr_9
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab20
      if (ATSCKptriscons(arg0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab21
      tmpret51 = arg1
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab22
      case 4: -- __atstmplab23
      tmp52 = arg0[0]
      tmp53 = arg0[1]
      tmp54 = _ats2luapre_qlistref_auxr_9(env0, tmp53, arg1)
      tmpret51 = env0[0](env0, tmp52, tmp54)
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret51
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
ats2luapre_ref(arg0)

--
-- knd = 0
  local tmpret0
  local tmplab, tmplab_lua
--
  -- __patsflab_ref
  tmpret0 = ats2luapre_ref_make_elt(arg0)
  return tmpret0
end -- end-of-function


function
ats2luapre_ref_make_elt(arg0)

--
-- knd = 0
  local tmpret1
  local tmp2
  local tmplab, tmplab_lua
--
  -- __patsflab_ref_make_elt
  tmp2 = ats2luapre_LuaTable_sing(arg0)
  tmpret1 = tmp2
  return tmpret1
end -- end-of-function


function
ats2luapre_ref_make_type_elt(arg0, arg1)

--
-- knd = 0
  local tmpret3
  local tmplab, tmplab_lua
--
  -- __patsflab_ref_make_type_elt
  tmpret3 = ats2luapre_ref_make_elt(arg1)
  return tmpret3
end -- end-of-function


function
ats2luapre_ref_get_elt(arg0)

--
-- knd = 0
  local tmpret4
  local tmplab, tmplab_lua
--
  -- __patsflab_ref_get_elt
  tmpret4 = ats2luapre_LuaTable_get(arg0, 1)
  return tmpret4
end -- end-of-function


function
ats2luapre_ref_set_elt(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_ref_set_elt
  ats2luapre_LuaTable_set(arg0, 1, arg1)
  return
end -- end-of-function


function
ats2luapre_ref_exch_elt(arg0, arg1)

--
-- knd = 0
  local tmpret6
  local tmp7
  local tmplab, tmplab_lua
--
  -- __patsflab_ref_exch_elt
  tmp7 = ats2luapre_LuaTable_get(arg0, 1)
  ats2luapre_LuaTable_set(arg0, 1, arg1)
  tmpret6 = tmp7
  return tmpret6
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
slistref_make_nil()

--
-- knd = 0
  local tmpret0
  local tmp1
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_make_nil
  tmp1 = nil
  tmpret0 = ats2luapre_ref(tmp1)
  return tmpret0
end -- end-of-function


function
slistref_length(arg0)

--
-- knd = 0
  local tmpret2
  local tmp3
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_length
  tmp3 = ats2luapre_ref_get_elt(arg0)
  tmpret2 = ats2luapre_list_length(tmp3)
  return tmpret2
end -- end-of-function


function
slistref_push(arg0, arg1)

--
-- knd = 0
  local tmp5
  local tmp6
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_push
  tmp6 = ats2luapre_ref_get_elt(arg0)
  tmp5 = [arg1, tmp6]
  ats2luapre_ref_set_elt(arg0, tmp5)
  return
end -- end-of-function


function
slistref_pop_opt(arg0)

--
-- knd = 0
  local tmpret7
  local tmp8
  local tmp9
  local tmp10
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_pop_opt
  tmp8 = ats2luapre_ref_get_elt(arg0)
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab0
      if (ATSCKptriscons(tmp8)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab1
      tmpret7 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab2
      case 4: -- __atstmplab3
      tmp9 = tmp8[0]
      tmp10 = tmp8[1]
      ats2luapre_ref_set_elt(arg0, tmp10)
      tmpret7 = [tmp9]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret7
end -- end-of-function


function
slistref_foldleft(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret12
  local tmp13
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_foldleft
  tmp13 = ats2luapre_ref_get_elt(arg0)
  tmpret12 = ats2luapre_list_foldleft(tmp13, arg1, arg2)
  return tmpret12
end -- end-of-function


function
slistref_foldright(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret14
  local tmp15
  local tmplab, tmplab_lua
--
  -- __patsflab_slistref_foldright
  tmp15 = ats2luapre_ref_get_elt(arg0)
  tmpret14 = ats2luapre_list_foldright(tmp15, arg1, arg2)
  return tmpret14
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_ats2luapre_stream_patsfun_6__closurerize(env0)
  return {function(cenv) return _ats2luapre_stream_patsfun_6(cenv[1]) end, env0}
end


function
_ats2luapre_stream_patsfun_16__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_16(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_18__closurerize(env0, env1)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_18(cenv[1], cenv[2], arg0) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_24__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_24(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_26__closurerize(env0)
  return {function(cenv) return _ats2luapre_stream_patsfun_26(cenv[1]) end, env0}
end


function
_ats2luapre_stream_patsfun_28__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_28(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_30__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_30(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_32__closurerize(env0, env1, env2)
  return {function(cenv) return _ats2luapre_stream_patsfun_32(cenv[1], cenv[2], cenv[3]) end, env0, env1, env2}
end


function
_ats2luapre_stream_patsfun_34__closurerize(env0)
  return {function(cenv, arg0, arg1) return _ats2luapre_stream_patsfun_34(cenv[1], arg0, arg1) end, env0}
end


function
_ats2luapre_stream_patsfun_36__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_36(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_38__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_38(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_41__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_41(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_44__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_44(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_47__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_47(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_51__closurerize(env0)
  return {function(cenv, arg0) return _ats2luapre_stream_patsfun_51(cenv[1], arg0) end, env0}
end


function
_ats2luapre_stream_patsfun_54__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_54(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_57__closurerize(env0, env1, env2, env3)
  return {function(cenv) return _ats2luapre_stream_patsfun_57(cenv[1], cenv[2], cenv[3], cenv[4]) end, env0, env1, env2, env3}
end


function
_ats2luapre_stream_patsfun_58__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_58(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_61__closurerize(env0)
  return {function(cenv) return _ats2luapre_stream_patsfun_61(cenv[1]) end, env0}
end


function
_ats2luapre_stream_patsfun_63__closurerize(env0)
  return {function(cenv) return _ats2luapre_stream_patsfun_63(cenv[1]) end, env0}
end


function
_ats2luapre_stream_patsfun_65__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_65(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_70__closurerize(env0)
  return {function(cenv, arg0, arg1) return _ats2luapre_stream_patsfun_70(cenv[1], arg0, arg1) end, env0}
end


function
_ats2luapre_stream_patsfun_72__closurerize(env0)
  return {function(cenv, arg0, arg1) return _ats2luapre_stream_patsfun_72(cenv[1], arg0, arg1) end, env0}
end


function
_ats2luapre_stream_patsfun_75__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_75(cenv[1], cenv[2]) end, env0, env1}
end


function
_ats2luapre_stream_patsfun_77__closurerize(env0, env1)
  return {function(cenv) return _ats2luapre_stream_patsfun_77(cenv[1], cenv[2]) end, env0, env1}
end


function
ats2luapre_stream_make_list(arg0)

--
-- knd = 0
  local tmpret7
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_make_list
  tmpret7 = ATSPMVlazyval(_ats2luapre_stream_patsfun_6__closurerize(arg0))
  return tmpret7
end -- end-of-function


function
_ats2luapre_stream_patsfun_6(env0)

--
-- knd = 0
  local tmpret8
  local tmp9
  local tmp10
  local tmp11
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_6
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab0
      if (ATSCKptriscons(env0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab1
      tmpret8 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab2
      case 4: -- __atstmplab3
      tmp9 = env0[0]
      tmp10 = env0[1]
      tmp11 = ats2luapre_stream_make_list(tmp10)
      tmpret8 = [tmp9, tmp11]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret8
end -- end-of-function


function
ats2luapre_stream_make_list0(arg0)

--
-- knd = 0
  local tmpret12
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_make_list0
  tmpret12 = ats2luapre_stream_make_list(arg0)
  return tmpret12
end -- end-of-function


function
ats2luapre_stream_nth_opt(arg0, arg1)

--
-- knd = 0
  local tmpret13
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_nth_opt
  tmpret13 = _ats2luapre_stream_loop_9(arg0, arg1)
  return tmpret13
end -- end-of-function


function
_ats2luapre_stream_loop_9(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret14
  local tmp15
  local tmp16
  local tmp17
  local tmp18
  local tmp19
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_loop_9
    tmp15 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab4
        if (ATSCKptriscons(tmp15)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab5
        tmpret14 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab6
        case 4: -- __atstmplab7
        tmp16 = tmp15[0]
        tmp17 = tmp15[1]
        tmp18 = ats2luapre_gt_int1_int1(arg1, 0)
        if(tmp18) then
          tmp19 = ats2luapre_pred_int1(arg1)
          -- ATStailcalseq_beg
          apy0 = tmp17
          apy1 = tmp19
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab__ats2luapre_stream_loop_9
          -- ATStailcalseq_end
         else
          tmpret14 = [tmp16]
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret14  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_length(arg0)

--
-- knd = 0
  local tmpret20
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_length
  tmpret20 = _ats2luapre_stream_loop_11(arg0, 0)
  return tmpret20
end -- end-of-function


function
_ats2luapre_stream_loop_11(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret21
  local tmp22
  local tmp24
  local tmp25
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_loop_11
    tmp22 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab8
        if (ATSCKptriscons(tmp22)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab9
        tmpret21 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab10
        case 4: -- __atstmplab11
        tmp24 = tmp22[1]
        tmp25 = ats2luapre_add_int1_int1(arg1, 1)
        -- ATStailcalseq_beg
        apy0 = tmp24
        apy1 = tmp25
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_stream_loop_11
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret21  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream2list(arg0)

--
-- knd = 0
  local tmpret26
  local tmp27
  local tmplab, tmplab_lua
--
  -- __patsflab_stream2list
  tmp27 = ats2luapre_stream2list_rev(arg0)
  tmpret26 = ats2luapre_list_reverse(tmp27)
  return tmpret26
end -- end-of-function


function
ats2luapre_stream2list_rev(arg0)

--
-- knd = 0
  local tmpret28
  local tmp34
  local tmplab, tmplab_lua
--
  -- __patsflab_stream2list_rev
  tmp34 = nil
  tmpret28 = _ats2luapre_stream_loop_14(arg0, tmp34)
  return tmpret28
end -- end-of-function


function
_ats2luapre_stream_loop_14(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret29
  local tmp30
  local tmp31
  local tmp32
  local tmp33
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_loop_14
    tmp30 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab12
        if (ATSCKptriscons(tmp30)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab13
        tmpret29 = arg1
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab14
        case 4: -- __atstmplab15
        tmp31 = tmp30[0]
        tmp32 = tmp30[1]
        tmp33 = [tmp31, arg1]
        -- ATStailcalseq_beg
        apy0 = tmp32
        apy1 = tmp33
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_stream_loop_14
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret29  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_takeLte(arg0, arg1)

--
-- knd = 0
  local tmpret35
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_takeLte
  tmpret35 = ATSPMVlazyval(_ats2luapre_stream_patsfun_16__closurerize(arg0, arg1))
  return tmpret35
end -- end-of-function


function
_ats2luapre_stream_patsfun_16(env0, env1)

--
-- knd = 0
  local tmpret36
  local tmp37
  local tmp38
  local tmp39
  local tmp40
  local tmp41
  local tmp42
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_16
  tmp37 = ats2luapre_gt_int1_int1(env1, 0)
  if(tmp37) then
    tmp38 = ATSPMVlazyval_eval(env0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab16
        if (ATSCKptriscons(tmp38)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab17
        tmpret36 = nil
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab18
        case 4: -- __atstmplab19
        tmp39 = tmp38[0]
        tmp40 = tmp38[1]
        tmp42 = ats2luapre_sub_int1_int1(env1, 1)
        tmp41 = ats2luapre_stream_takeLte(tmp40, tmp42)
        tmpret36 = [tmp39, tmp41]
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
   else
    tmpret36 = nil
  end -- end-of-if
  return tmpret36
end -- end-of-function


function
ats2luapre_stream_takeLte_vt(arg0, arg1)

--
-- knd = 0
  local tmpret43
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_takeLte_vt
  tmpret43 = ATSPMVllazyval(_ats2luapre_stream_patsfun_18__closurerize(arg0, arg1))
  return tmpret43
end -- end-of-function


function
_ats2luapre_stream_patsfun_18(env0, env1, arg0)

--
-- knd = 0
  local tmpret44
  local tmp45
  local tmp46
  local tmp47
  local tmp48
  local tmp49
  local tmp50
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_18
  if(arg0) then
    tmp45 = ats2luapre_gt_int1_int1(env1, 0)
    if(tmp45) then
      tmp46 = ATSPMVlazyval_eval(env0) 
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab20
          if (ATSCKptriscons(tmp46)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab21
          tmpret44 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab22
          case 4: -- __atstmplab23
          tmp47 = tmp46[0]
          tmp48 = tmp46[1]
          tmp50 = ats2luapre_sub_int1_int1(env1, 1)
          tmp49 = ats2luapre_stream_takeLte_vt(tmp48, tmp50)
          tmpret44 = [tmp47, tmp49]
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
     else
      tmpret44 = nil
    end -- end-of-if
   else
  end -- end-of-if
  return tmpret44
end -- end-of-function


function
ats2luapre_stream_take_opt(arg0, arg1)

--
-- knd = 0
  local tmpret51
  local tmp60
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_take_opt
  tmp60 = nil
  tmpret51 = _ats2luapre_stream_auxmain_20(arg1, arg0, 0, tmp60)
  return tmpret51
end -- end-of-function


function
_ats2luapre_stream_auxmain_20(env0, arg0, arg1, arg2)

--
-- knd = 1
  local apy0
  local apy1
  local apy2
  local tmpret52
  local tmp53
  local tmp54
  local tmp55
  local tmp56
  local tmp57
  local tmp58
  local tmp59
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_auxmain_20
    tmp53 = ats2luapre_lt_int1_int1(arg1, env0)
    if(tmp53) then
      tmp54 = ATSPMVlazyval_eval(arg0) 
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab24
          if (ATSCKptriscons(tmp54)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab25
          tmpret52 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab26
          case 4: -- __atstmplab27
          tmp55 = tmp54[0]
          tmp56 = tmp54[1]
          tmp57 = ats2luapre_add_int1_int1(arg1, 1)
          tmp58 = [tmp55, arg2]
          -- ATStailcalseq_beg
          apy0 = tmp56
          apy1 = tmp57
          apy2 = tmp58
          arg0 = apy0
          arg1 = apy1
          arg2 = apy2
          funlab_lua = 1 -- __patsflab__ats2luapre_stream_auxmain_20
          -- ATStailcalseq_end
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
     else
      tmp59 = ats2luapre_list_reverse(arg2)
      tmpret52 = [tmp59]
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret52  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_drop_opt(arg0, arg1)

--
-- knd = 0
  local tmpret61
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_drop_opt
  tmpret61 = _ats2luapre_stream_auxmain_22(arg1, arg0, 0)
  return tmpret61
end -- end-of-function


function
_ats2luapre_stream_auxmain_22(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret62
  local tmp63
  local tmp64
  local tmp66
  local tmp67
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_auxmain_22
    tmp63 = ats2luapre_lt_int1_int1(arg1, env0)
    if(tmp63) then
      tmp64 = ATSPMVlazyval_eval(arg0) 
      -- ATScaseofseq_beg
      tmplab_lua = 1
      while true do
        tmplab = tmplab_lua; tmplab_lua = 0
        do
          -- ATSbranchseq_beg
          case 1: -- __atstmplab28
          if (ATSCKptriscons(tmp64)) then
            do tmplab_lua = 4 break; end
          end -- ifthen
          case 2: -- __atstmplab29
          tmpret62 = nil
          break
          -- ATSbranchseq_end
          -- ATSbranchseq_beg
          case 3: -- __atstmplab30
          case 4: -- __atstmplab31
          tmp66 = tmp64[1]
          tmp67 = ats2luapre_add_int1_int1(arg1, 1)
          -- ATStailcalseq_beg
          apy0 = tmp66
          apy1 = tmp67
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab__ats2luapre_stream_auxmain_22
          -- ATStailcalseq_end
          break
          -- ATSbranchseq_end
        end -- end-of-switch
        if tmplab_lua == 0 then break end
      end -- endwhile
      -- ATScaseofseq_end
     else
      tmpret62 = [arg0]
    end -- end-of-if
    if funlab_lua <= 0 then return tmpret62  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_append(arg0, arg1)

--
-- knd = 0
  local tmpret68
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_append
  tmpret68 = ATSPMVlazyval(_ats2luapre_stream_patsfun_24__closurerize(arg0, arg1))
  return tmpret68
end -- end-of-function


function
_ats2luapre_stream_patsfun_24(env0, env1)

--
-- knd = 0
  local tmpret69
  local tmp70
  local tmp71
  local tmp72
  local tmp73
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_24
  tmp70 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab32
      if (ATSCKptriscons(tmp70)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab33
      tmpret69 = ATSPMVlazyval_eval(env1) 
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab34
      case 4: -- __atstmplab35
      tmp71 = tmp70[0]
      tmp72 = tmp70[1]
      tmp73 = ats2luapre_stream_append(tmp72, env1)
      tmpret69 = [tmp71, tmp73]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret69
end -- end-of-function


function
ats2luapre_stream_concat(arg0)

--
-- knd = 0
  local tmpret74
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_concat
  tmpret74 = ATSPMVlazyval(_ats2luapre_stream_patsfun_26__closurerize(arg0))
  return tmpret74
end -- end-of-function


function
_ats2luapre_stream_patsfun_26(env0)

--
-- knd = 0
  local tmpret75
  local tmp76
  local tmp77
  local tmp78
  local tmp79
  local tmp80
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_26
  tmp76 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab36
      if (ATSCKptriscons(tmp76)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab37
      tmpret75 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab38
      case 4: -- __atstmplab39
      tmp77 = tmp76[0]
      tmp78 = tmp76[1]
      tmp80 = ats2luapre_stream_concat(tmp78)
      tmp79 = ats2luapre_stream_append(tmp77, tmp80)
      tmpret75 = ATSPMVlazyval_eval(tmp79) 
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret75
end -- end-of-function


function
ats2luapre_stream_map_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret81
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_map_cloref
  tmpret81 = ATSPMVlazyval(_ats2luapre_stream_patsfun_28__closurerize(arg0, arg1))
  return tmpret81
end -- end-of-function


function
_ats2luapre_stream_patsfun_28(env0, env1)

--
-- knd = 0
  local tmpret82
  local tmp83
  local tmp84
  local tmp85
  local tmp86
  local tmp87
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_28
  tmp83 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab40
      if (ATSCKptriscons(tmp83)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab41
      tmpret82 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab42
      case 4: -- __atstmplab43
      tmp84 = tmp83[0]
      tmp85 = tmp83[1]
      tmp86 = env1[0](env1, tmp84)
      tmp87 = ats2luapre_stream_map_cloref(tmp85, env1)
      tmpret82 = [tmp86, tmp87]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret82
end -- end-of-function


function
ats2luapre_stream_map_method(arg0, arg1)

--
-- knd = 0
  local tmpret88
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_map_method
  tmpret88 = _ats2luapre_stream_patsfun_30__closurerize(arg0)
  return tmpret88
end -- end-of-function


function
_ats2luapre_stream_patsfun_30(env0, arg0)

--
-- knd = 0
  local tmpret89
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_30
  tmpret89 = ats2luapre_stream_map_cloref(env0, arg0)
  return tmpret89
end -- end-of-function


function
ats2luapre_stream_scan_cloref(arg0, arg1, arg2)

--
-- knd = 0
  local tmpret90
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_scan_cloref
  tmpret90 = ATSPMVlazyval(_ats2luapre_stream_patsfun_32__closurerize(arg0, arg1, arg2))
  return tmpret90
end -- end-of-function


function
_ats2luapre_stream_patsfun_32(env0, env1, env2)

--
-- knd = 0
  local tmpret91
  local tmp92
  local tmp93
  local tmp94
  local tmp95
  local tmp96
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_32
  tmp92 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab44
      if (ATSCKptriscons(tmp92)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab45
      tmpret91 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab46
      case 4: -- __atstmplab47
      tmp93 = tmp92[0]
      tmp94 = tmp92[1]
      tmp96 = env2[0](env2, env1, tmp93)
      tmp95 = ats2luapre_stream_scan_cloref(tmp94, tmp96, env2)
      tmpret91 = [env1, tmp95]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret91
end -- end-of-function


function
ats2luapre_stream_scan_method(arg0, arg1)

--
-- knd = 0
  local tmpret97
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_scan_method
  tmpret97 = _ats2luapre_stream_patsfun_34__closurerize(arg0)
  return tmpret97
end -- end-of-function


function
_ats2luapre_stream_patsfun_34(env0, arg0, arg1)

--
-- knd = 0
  local tmpret98
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_34
  tmpret98 = ats2luapre_stream_scan_cloref(env0, arg0, arg1)
  return tmpret98
end -- end-of-function


function
ats2luapre_stream_filter_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret99
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_filter_cloref
  tmpret99 = ATSPMVlazyval(_ats2luapre_stream_patsfun_36__closurerize(arg0, arg1))
  return tmpret99
end -- end-of-function


function
_ats2luapre_stream_patsfun_36(env0, env1)

--
-- knd = 0
  local tmpret100
  local tmp101
  local tmp102
  local tmp103
  local tmp104
  local tmp105
  local tmp106
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_36
  tmp101 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab48
      if (ATSCKptriscons(tmp101)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab49
      tmpret100 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab50
      case 4: -- __atstmplab51
      tmp102 = tmp101[0]
      tmp103 = tmp101[1]
      tmp104 = env1[0](env1, tmp102)
      if(tmp104) then
        tmp105 = ats2luapre_stream_filter_cloref(tmp103, env1)
        tmpret100 = [tmp102, tmp105]
       else
        tmp106 = ats2luapre_stream_filter_cloref(tmp103, env1)
        tmpret100 = ATSPMVlazyval_eval(tmp106) 
      end -- end-of-if
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret100
end -- end-of-function


function
ats2luapre_stream_filter_method(arg0)

--
-- knd = 0
  local tmpret107
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_filter_method
  tmpret107 = _ats2luapre_stream_patsfun_38__closurerize(arg0)
  return tmpret107
end -- end-of-function


function
_ats2luapre_stream_patsfun_38(env0, arg0)

--
-- knd = 0
  local tmpret108
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_38
  tmpret108 = ats2luapre_stream_filter_cloref(env0, arg0)
  return tmpret108
end -- end-of-function


function
ats2luapre_stream_forall_cloref(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret109
  local tmp110
  local tmp111
  local tmp112
  local tmp113
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_stream_forall_cloref
    tmp110 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab52
        if (ATSCKptriscons(tmp110)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab53
        tmpret109 = true
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab54
        case 4: -- __atstmplab55
        tmp111 = tmp110[0]
        tmp112 = tmp110[1]
        tmp113 = arg1[0](arg1, tmp111)
        if(tmp113) then
          -- ATStailcalseq_beg
          apy0 = tmp112
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_stream_forall_cloref
          -- ATStailcalseq_end
         else
          tmpret109 = false
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret109  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_forall_method(arg0)

--
-- knd = 0
  local tmpret114
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_forall_method
  tmpret114 = _ats2luapre_stream_patsfun_41__closurerize(arg0)
  return tmpret114
end -- end-of-function


function
_ats2luapre_stream_patsfun_41(env0, arg0)

--
-- knd = 0
  local tmpret115
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_41
  tmpret115 = ats2luapre_stream_forall_cloref(env0, arg0)
  return tmpret115
end -- end-of-function


function
ats2luapre_stream_exists_cloref(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmpret116
  local tmp117
  local tmp118
  local tmp119
  local tmp120
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_stream_exists_cloref
    tmp117 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab56
        if (ATSCKptriscons(tmp117)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab57
        tmpret116 = false
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab58
        case 4: -- __atstmplab59
        tmp118 = tmp117[0]
        tmp119 = tmp117[1]
        tmp120 = arg1[0](arg1, tmp118)
        if(tmp120) then
          tmpret116 = true
         else
          -- ATStailcalseq_beg
          apy0 = tmp119
          apy1 = arg1
          arg0 = apy0
          arg1 = apy1
          funlab_lua = 1 -- __patsflab_stream_exists_cloref
          -- ATStailcalseq_end
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret116  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_exists_method(arg0)

--
-- knd = 0
  local tmpret121
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_exists_method
  tmpret121 = _ats2luapre_stream_patsfun_44__closurerize(arg0)
  return tmpret121
end -- end-of-function


function
_ats2luapre_stream_patsfun_44(env0, arg0)

--
-- knd = 0
  local tmpret122
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_44
  tmpret122 = ats2luapre_stream_exists_cloref(env0, arg0)
  return tmpret122
end -- end-of-function


function
ats2luapre_stream_foreach_cloref(arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmp124
  local tmp125
  local tmp126
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab_stream_foreach_cloref
    tmp124 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab60
        if (ATSCKptriscons(tmp124)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab61
        -- ATSINSmove_void
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab62
        case 4: -- __atstmplab63
        tmp125 = tmp124[0]
        tmp126 = tmp124[1]
        arg1[0](arg1, tmp125)
        -- ATStailcalseq_beg
        apy0 = tmp126
        apy1 = arg1
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab_stream_foreach_cloref
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_foreach_method(arg0)

--
-- knd = 0
  local tmpret128
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_foreach_method
  tmpret128 = _ats2luapre_stream_patsfun_47__closurerize(arg0)
  return tmpret128
end -- end-of-function


function
_ats2luapre_stream_patsfun_47(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_47
  ats2luapre_stream_foreach_cloref(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_stream_iforeach_cloref(arg0, arg1)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_iforeach_cloref
  _ats2luapre_stream_loop_49(arg1, 0, arg0)
  return
end -- end-of-function


function
_ats2luapre_stream_loop_49(env0, arg0, arg1)

--
-- knd = 1
  local apy0
  local apy1
  local tmp132
  local tmp133
  local tmp134
  local tmp136
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_loop_49
    tmp132 = ATSPMVlazyval_eval(arg1) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab64
        if (ATSCKptriscons(tmp132)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab65
        -- ATSINSmove_void
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab66
        case 4: -- __atstmplab67
        tmp133 = tmp132[0]
        tmp134 = tmp132[1]
        env0[0](env0, arg0, tmp133)
        tmp136 = ats2luapre_add_int1_int1(arg0, 1)
        -- ATStailcalseq_beg
        apy0 = tmp136
        apy1 = tmp134
        arg0 = apy0
        arg1 = apy1
        funlab_lua = 1 -- __patsflab__ats2luapre_stream_loop_49
        -- ATStailcalseq_end
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_iforeach_method(arg0)

--
-- knd = 0
  local tmpret137
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_iforeach_method
  tmpret137 = _ats2luapre_stream_patsfun_51__closurerize(arg0)
  return tmpret137
end -- end-of-function


function
_ats2luapre_stream_patsfun_51(env0, arg0)

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_51
  ats2luapre_stream_iforeach_cloref(env0, arg0)
  return
end -- end-of-function


function
ats2luapre_stream_tabulate_cloref(arg0)

--
-- knd = 0
  local tmpret139
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_tabulate_cloref
  tmpret139 = _ats2luapre_stream_auxmain_53(arg0, 0)
  return tmpret139
end -- end-of-function


function
_ats2luapre_stream_auxmain_53(env0, arg0)

--
-- knd = 0
  local tmpret140
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_auxmain_53
  tmpret140 = ATSPMVlazyval(_ats2luapre_stream_patsfun_54__closurerize(env0, arg0))
  return tmpret140
end -- end-of-function


function
_ats2luapre_stream_patsfun_54(env0, env1)

--
-- knd = 0
  local tmpret141
  local tmp142
  local tmp143
  local tmp144
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_54
  tmp142 = env0[0](env0, env1)
  tmp144 = ats2luapre_add_int1_int1(env1, 1)
  tmp143 = _ats2luapre_stream_auxmain_53(env0, tmp144)
  tmpret141 = [tmp142, tmp143]
  return tmpret141
end -- end-of-function


function
ats2luapre_cross_stream_list(arg0, arg1)

--
-- knd = 0
  local tmpret145
  local tmplab, tmplab_lua
--
  -- __patsflab_cross_stream_list
  tmpret145 = ATSPMVlazyval(_ats2luapre_stream_patsfun_58__closurerize(arg0, arg1))
  return tmpret145
end -- end-of-function


function
_ats2luapre_stream_auxmain_56(arg0, arg1, arg2, arg3)

--
-- knd = 0
  local tmpret146
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_auxmain_56
  tmpret146 = ATSPMVlazyval(_ats2luapre_stream_patsfun_57__closurerize(arg0, arg1, arg2, arg3))
  return tmpret146
end -- end-of-function


function
_ats2luapre_stream_patsfun_57(env0, env1, env2, env3)

--
-- knd = 0
  local tmpret147
  local tmp148
  local tmp149
  local tmp150
  local tmp151
  local tmp152
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_57
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab68
      if (ATSCKptriscons(env3)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab69
      tmp150 = ats2luapre_cross_stream_list(env1, env2)
      tmpret147 = ATSPMVlazyval_eval(tmp150) 
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab70
      case 4: -- __atstmplab71
      tmp148 = env3[0]
      tmp149 = env3[1]
      tmp151 = [env0, tmp148]
      tmp152 = _ats2luapre_stream_auxmain_56(env0, env1, env2, tmp149)
      tmpret147 = [tmp151, tmp152]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret147
end -- end-of-function


function
_ats2luapre_stream_patsfun_58(env0, env1)

--
-- knd = 0
  local tmpret153
  local tmp154
  local tmp155
  local tmp156
  local tmp157
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_58
  tmp154 = ATSPMVlazyval_eval(env0) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab72
      if (ATSCKptriscons(tmp154)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab73
      tmpret153 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab74
      if (ATSCKptrisnull(tmp154)) then
        ATSINScaseof_fail("/home/calvin/code/ATS2-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 7890(line=515, offs=1) -- 7982(line=517, offs=50)")
      end -- ifthen
      case 4: -- __atstmplab75
      tmp155 = tmp154[0]
      tmp156 = tmp154[1]
      tmp157 = _ats2luapre_stream_auxmain_56(tmp155, tmp156, env1, env1)
      tmpret153 = ATSPMVlazyval_eval(tmp157) 
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret153
end -- end-of-function


function
ats2luapre_cross_stream_list0(arg0, arg1)

--
-- knd = 0
  local tmpret158
  local tmplab, tmplab_lua
--
  -- __patsflab_cross_stream_list0
  tmpret158 = ats2luapre_cross_stream_list(arg0, arg1)
  return tmpret158
end -- end-of-function


function
ats2luapre_stream2cloref_exn(arg0)

--
-- knd = 0
  local tmpret159
  local tmp160
  local tmplab, tmplab_lua
--
  -- __patsflab_stream2cloref_exn
  tmp160 = ats2luapre_ref(arg0)
  tmpret159 = _ats2luapre_stream_patsfun_61__closurerize(tmp160)
  return tmpret159
end -- end-of-function


function
_ats2luapre_stream_patsfun_61(env0)

--
-- knd = 0
  local tmpret161
  local tmp162
  local tmp163
  local tmp164
  local tmp165
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_61
  tmp162 = ats2luapre_ref_get_elt(env0)
  tmp163 = ATSPMVlazyval_eval(tmp162) 
  if (ATSCKptrisnull(tmp163)) then
    ATSINScaseof_fail("/home/calvin/code/ATS2-Postiats/contrib/libatscc/ATS2-0.3.2/DATS/stream.dats: 8283(line=543, offs=5) -- 8307(line=543, offs=29)")
  end -- ifthen
  tmp164 = tmp163[0]
  tmp165 = tmp163[1]
  ats2luapre_ref_set_elt(env0, tmp165)
  tmpret161 = tmp164
  return tmpret161
end -- end-of-function


function
ats2luapre_stream2cloref_opt(arg0)

--
-- knd = 0
  local tmpret167
  local tmp168
  local tmplab, tmplab_lua
--
  -- __patsflab_stream2cloref_opt
  tmp168 = ats2luapre_ref(arg0)
  tmpret167 = _ats2luapre_stream_patsfun_63__closurerize(tmp168)
  return tmpret167
end -- end-of-function


function
_ats2luapre_stream_patsfun_63(env0)

--
-- knd = 0
  local tmpret169
  local tmp170
  local tmp171
  local tmp172
  local tmp173
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_63
  tmp170 = ats2luapre_ref_get_elt(env0)
  tmp171 = ATSPMVlazyval_eval(tmp170) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab76
      if (ATSCKptriscons(tmp171)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab77
      tmpret169 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab78
      case 4: -- __atstmplab79
      tmp172 = tmp171[0]
      tmp173 = tmp171[1]
      ats2luapre_ref_set_elt(env0, tmp173)
      tmpret169 = [tmp172]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret169
end -- end-of-function


function
ats2luapre_stream2cloref_last(arg0, arg1)

--
-- knd = 0
  local tmpret175
  local tmp176
  local tmp177
  local tmplab, tmplab_lua
--
  -- __patsflab_stream2cloref_last
  tmp176 = ats2luapre_ref(arg0)
  tmp177 = ats2luapre_ref(arg1)
  tmpret175 = _ats2luapre_stream_patsfun_65__closurerize(tmp176, tmp177)
  return tmpret175
end -- end-of-function


function
_ats2luapre_stream_patsfun_65(env0, env1)

--
-- knd = 0
  local tmpret178
  local tmp179
  local tmp180
  local tmp181
  local tmp182
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_65
  tmp179 = ats2luapre_ref_get_elt(env0)
  tmp180 = ATSPMVlazyval_eval(tmp179) 
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab80
      if (ATSCKptriscons(tmp180)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab81
      tmpret178 = ats2luapre_ref_get_elt(env1)
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab82
      case 4: -- __atstmplab83
      tmp181 = tmp180[0]
      tmp182 = tmp180[1]
      ats2luapre_ref_set_elt(env0, tmp182)
      ats2luapre_ref_set_elt(env1, tmp181)
      tmpret178 = tmp181
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret178
end -- end-of-function


function
ats2luapre_stream_take_while_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret185
  local tmp186
  local tmp187
  local tmp188
  local tmp189
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_take_while_cloref
  tmp186 = ats2luapre_stream_rtake_while_cloref(arg0, arg1)
  tmp187 = tmp186[0]
  tmp188 = tmp186[1]
  tmp189 = ats2luapre_list_reverse(tmp188)
  tmpret185 = [tmp187, tmp189]
  return tmpret185
end -- end-of-function


function
ats2luapre_stream_rtake_while_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret190
  local tmp198
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_rtake_while_cloref
  tmp198 = nil
  tmpret190 = _ats2luapre_stream_loop_68(arg1, arg0, 0, tmp198)
  return tmpret190
end -- end-of-function


function
_ats2luapre_stream_loop_68(env0, arg0, arg1, arg2)

--
-- knd = 1
  local apy0
  local apy1
  local apy2
  local tmpret191
  local tmp192
  local tmp193
  local tmp194
  local tmp195
  local tmp196
  local tmp197
  local funlab_lua
  local tmplab, tmplab_lua
--
  while true do
    funlab_lua = 0
    -- __patsflab__ats2luapre_stream_loop_68
    tmp192 = ATSPMVlazyval_eval(arg0) 
    -- ATScaseofseq_beg
    tmplab_lua = 1
    while true do
      tmplab = tmplab_lua; tmplab_lua = 0
      do
        -- ATSbranchseq_beg
        case 1: -- __atstmplab84
        if (ATSCKptriscons(tmp192)) then
          do tmplab_lua = 4 break; end
        end -- ifthen
        case 2: -- __atstmplab85
        tmpret191 = [arg0, arg2]
        break
        -- ATSbranchseq_end
        -- ATSbranchseq_beg
        case 3: -- __atstmplab86
        case 4: -- __atstmplab87
        tmp193 = tmp192[0]
        tmp194 = tmp192[1]
        tmp195 = env0[0](env0, arg1, tmp193)
        if(tmp195) then
          tmp196 = ats2luapre_add_int1_int1(arg1, 1)
          tmp197 = [tmp193, arg2]
          -- ATStailcalseq_beg
          apy0 = tmp194
          apy1 = tmp196
          apy2 = tmp197
          arg0 = apy0
          arg1 = apy1
          arg2 = apy2
          funlab_lua = 1 -- __patsflab__ats2luapre_stream_loop_68
          -- ATStailcalseq_end
         else
          tmpret191 = [arg0, arg2]
        end -- end-of-if
        break
        -- ATSbranchseq_end
      end -- end-of-switch
      if tmplab_lua == 0 then break end
    end -- endwhile
    -- ATScaseofseq_end
    if funlab_lua <= 0 then return tmpret191  end
  end -- endwhile-fun
end -- end-of-function


function
ats2luapre_stream_take_until_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret199
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_take_until_cloref
  tmpret199 = ats2luapre_stream_take_while_cloref(arg0, _ats2luapre_stream_patsfun_70__closurerize(arg1))
  return tmpret199
end -- end-of-function


function
_ats2luapre_stream_patsfun_70(env0, arg0, arg1)

--
-- knd = 0
  local tmpret200
  local tmp201
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_70
  tmp201 = env0[0](env0, arg0, arg1)
  tmpret200 = atspre_neg_bool0(tmp201)
  return tmpret200
end -- end-of-function


function
ats2luapre_stream_rtake_until_cloref(arg0, arg1)

--
-- knd = 0
  local tmpret202
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_rtake_until_cloref
  tmpret202 = ats2luapre_stream_rtake_while_cloref(arg0, _ats2luapre_stream_patsfun_72__closurerize(arg1))
  return tmpret202
end -- end-of-function


function
_ats2luapre_stream_patsfun_72(env0, arg0, arg1)

--
-- knd = 0
  local tmpret203
  local tmp204
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_72
  tmp204 = env0[0](env0, arg0, arg1)
  tmpret203 = atspre_neg_bool0(tmp204)
  return tmpret203
end -- end-of-function


function
ats2luapre_stream_list_xprod2(arg0, arg1)

--
-- knd = 0
  local tmpret205
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_list_xprod2
  tmpret205 = _ats2luapre_stream_auxlst_76(arg0, arg1)
  return tmpret205
end -- end-of-function


function
_ats2luapre_stream_aux_74(arg0, arg1)

--
-- knd = 0
  local tmpret206
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_aux_74
  tmpret206 = ATSPMVlazyval(_ats2luapre_stream_patsfun_75__closurerize(arg0, arg1))
  return tmpret206
end -- end-of-function


function
_ats2luapre_stream_patsfun_75(env0, env1)

--
-- knd = 0
  local tmpret207
  local tmp208
  local tmp209
  local tmp210
  local tmp211
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_75
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab88
      if (ATSCKptriscons(env1)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab89
      tmpret207 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab90
      case 4: -- __atstmplab91
      tmp208 = env1[0]
      tmp209 = env1[1]
      tmp210 = [env0, tmp208]
      tmp211 = _ats2luapre_stream_aux_74(env0, tmp209)
      tmpret207 = [tmp210, tmp211]
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret207
end -- end-of-function


function
_ats2luapre_stream_auxlst_76(arg0, arg1)

--
-- knd = 0
  local tmpret212
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_auxlst_76
  tmpret212 = ATSPMVlazyval(_ats2luapre_stream_patsfun_77__closurerize(arg0, arg1))
  return tmpret212
end -- end-of-function


function
_ats2luapre_stream_patsfun_77(env0, env1)

--
-- knd = 0
  local tmpret213
  local tmp214
  local tmp215
  local tmp216
  local tmp217
  local tmp218
  local tmplab, tmplab_lua
--
  -- __patsflab__ats2luapre_stream_patsfun_77
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab92
      if (ATSCKptriscons(env0)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab93
      tmpret213 = nil
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab94
      case 4: -- __atstmplab95
      tmp214 = env0[0]
      tmp215 = env0[1]
      tmp217 = _ats2luapre_stream_aux_74(tmp214, env1)
      tmp218 = _ats2luapre_stream_auxlst_76(tmp215, env1)
      tmp216 = ats2luapre_stream_append(tmp217, tmp218)
      tmpret213 = ATSPMVlazyval_eval(tmp216) 
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret213
end -- end-of-function


function
ats2luapre_stream_nth_exn(arg0, arg1)

--
-- knd = 0
  local tmpret219
  local tmp220
  local tmp221
  local tmplab, tmplab_lua
--
  -- __patsflab_stream_nth_exn
  tmp220 = ats2luapre_stream_nth_opt(arg0, arg1)
  -- ATScaseofseq_beg
  tmplab_lua = 1
  while true do
    tmplab = tmplab_lua; tmplab_lua = 0
    do
      -- ATSbranchseq_beg
      case 1: -- __atstmplab96
      if (ATSCKptrisnull(tmp220)) then
        do tmplab_lua = 4 break; end
      end -- ifthen
      case 2: -- __atstmplab97
      tmp221 = tmp220[0]
      -- ATSINSfreecon(tmp220)
      tmpret219 = tmp221
      break
      -- ATSbranchseq_end
      -- ATSbranchseq_beg
      case 3: -- __atstmplab98
      case 4: -- __atstmplab99
      tmpret219 = ats2luapre_StreamSubscriptExn_throw()
      break
      -- ATSbranchseq_end
    end -- end-of-switch
    if tmplab_lua == 0 then break end
  end -- endwhile
  -- ATScaseofseq_end
  return tmpret219
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
--[[
--
-- The Lua code is generated by atscc2lua
-- The starting compilation time is: 2018-4-25: 14h:12m
--
--]]

function
_057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_DATS_057_stream_vt_056_dats__dynload()

--
-- knd = 0
  local tmplab, tmplab_lua
--
  -- ATSdynload()
  -- ATSdynloadflag_ext(_057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_DATS_057_stream_vt_056_dats__dynloadflag(13))
  if(ATSCKiseqz(_057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_DATS_057_stream_vt_056_dats__dynloadflag)) then
    _057_home_057_calvin_057_code_057_ats_055_lua_057_libatscc2lua_057_DATS_057_stream_vt_056_dats__dynloadflag = 1 -- flag is set
  end -- end-of-if
  return
end -- end-of-function


--[[ ------ ------ ]]

--[[ end-of-compilation-unit ]]
