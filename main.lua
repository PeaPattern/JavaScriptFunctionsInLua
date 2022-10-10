local JavaScript = {}

function JavaScript.startsWith(String: string?, Start: string?, Position: number?)
    if not String or typeof(String) ~= "string" then error("<startsWith> String is not string.") end
    if not Start or typeof(Start) ~= "string" then error("<startsWith> Start is not string.") end
    if not Position then Position = 1 elseif typeof(Position) ~= "number" then error("<startsWith> Position is not number.") end
    
    if String:sub(Position, Start:len()+Position-1) == Start then
        return true
    else
        return false
    end
end

function JavaScript.fill(Table: table?, Fill: number?, From: number?, To: number?)
    if not Table or typeof(Table) ~= "table" then error("<fill> Table is not a table.") end
    if not Fill or typeof(Fill) ~= "number" then error("<fill> Fill is not number.") end
    if not From then From = 1 elseif typeof(From) ~= "number" then error("<fill> From is not number.") end
    if not To then To = #Table elseif typeof(To) ~= "number" then error("<fill> To is not number.") end
    
    for Iterate = 0, To - From, 1 do
        Table[Iterate + From] = Fill
    end
    return Table
end

function JavaScript.try(Try, Catch)
    if not Try or typeof(Try) ~= "function" then error("<try> Try is not function.") end
    if not Catch then Catch = function() elseif typeof(Catch) ~= "function" then error("<try> Catch is not function.") end
    
    local success, error = pcall(Try)
    if not success then
        Catch(error)
    end -- ok if u actually watch changes i didnt test this soooo dont blame on me if it doesnt work
end

return JavaScript
