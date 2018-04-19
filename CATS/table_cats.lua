--[[
--
-- HX-2014-08:
-- for Lua code
-- translated from ATS
--
--]]


ats2luapre_table_insert = table.insert
ats2luapre_table_remove = table.remove
ats2luapre_table_concat = table.concat
ats2luapre_table_sort2 = table.sort

function ats2luapre_table_length(t) return #t end

function ats2luapre_table_copy(t)
    local ret = {}
    for k, v in pairs(t) do ret[k] = v end
    return ret
end

function ats2luapre_table_nil() return {} end
function ats2luapre_table_sing(x) return {x} end
function ats2luapre_table_pair(x, y) return {x, y} end

function ats2luapre_table_set(t, k, v) t[k] = v end
function ats2luapre_table_exch(t, k, v) local old = t[k]; t[k] = v; return old end
function ats2luapre_table_get(t, k) return t[k] end

function ats2luapre_table_pop(t) local ret = t[#t]; t[#t] = nil; return ret end
function ats2luapre_table_push(t, x) t[#t + 1] = x; return t end

