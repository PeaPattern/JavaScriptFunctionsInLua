local JavaScript = {}

function JavaScript.startsWith(String: string?, Start: string?, Position: number?)
    if not String or type(String) ~= "string" then error("<startsWith> String is not string.") end
    if not Start or type(Start) ~= "string" then error("<startsWith> Start is not string.") end
    if not Position then Position = 1 elseif type(Position) ~= "number" then error("<startsWith> Position is not number.") end
    
    if String:sub(Position, Start:len()+Position-1) == Start then
        return true
    else
        return false
    end
end

function JavaScript.fill(Table: table?, Fill: number?, From: number?, To: number?)
    if not Table or type(Table) ~= "table" then error("<fill> Table is not a table.") end
    if not Fill or type(Fill) ~= "number" then error("<fill> Fill is not number.") end
    if not From then From = 1 elseif type(From) ~= "number" then error("<fill> From is not number.") end
    if not To then To = #Table elseif type(To) ~= "number" then error("<fill> To is not number.") end
    
    for Iterate = 0, To - From, 1 do
        Table[Iterate + From] = Fill
    end
    return Table
end

return JavaScript
