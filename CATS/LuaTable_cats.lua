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

