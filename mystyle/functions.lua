function acronym(s)
    result = ""
    for c in s:gmatch"." do
        if string.match(c, "[A-Z]") then
            result = result.."\\textsc{"..string.lower(c).."}"
        else
            result = result..c
        end
    end
    tex.print(result)
end