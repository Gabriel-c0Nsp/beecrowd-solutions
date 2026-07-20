local list = {}

for i = 1, 100 do
	list[i] = io.read("*n")
end

local greater = 0
local index = 1
for i, v in ipairs(list) do
    if v > greater then
        greater = v
        index = i
    end
end

print(greater)
print(index)