local Base256 = loadstring(game:HttpGet("https://raw.github.com/0zBug/Base256/main/main.lua"))()

local BooleanTable = {}

function BooleanTable.Encode(Table, Reverse)
	local Number = 2 ^ #Table
	
	local Index = 0
	for _, Value in Table do
		Index = Index + 1
		
		if Reverse and Value or not Value then
			Number = Number - 2 ^ (Index - 1)
		end
	end
	
	return Base256.Encode(Number)
end

function BooleanTable.Decode(Number, Length, Reverse)
	local Table = {}
	local Number = Base256.Decode(Number)
	
	for Index = Length, 1, -1 do
		local Exp = 2 ^ (Index - 1)
		local Value = Number > Exp
		Value = Reverse and not Value or Value
		
		Table[Index] = Value
		
		if Value then
			Number = Number - Exp
		end
	end
	
	return Table
end

return BooleanTable
