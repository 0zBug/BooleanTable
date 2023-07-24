reverse is broken dont use it

```lua

local BooleanTable = loadstring(game:HttpGet("https://raw.github.com/0zBug/BooleanTable/main/main.lua"))()

local Settings = {
	true,
	true,
	true,
	false,
	true,
	true,
	true,
	false,
	true,
	true,
	true,
	false,
	true,
	true,
	true,
	false,
	true,
	true,
	true,
	false
}

local Encoded = BooleanTable.Encode(Settings)

local Decoded = BooleanTable.Decode(Encoded, 20) -- 20 = #Settings

print(Encoded)
print(#tostring(Encoded)) -- 3
print(#Settings) -- 20 (if i were to represent true and false with single characters)

for _, Value in Decoded do
	print(Value)
end
```
