local MAJOR, MINOR = "LibGetEnchant-1.0", 1
assert(LibStub, MAJOR.." requires LibStub")
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

function lib.GetEnchant(enchantID)
	local enchant = tonumber(enchantID)
	if LibGetEnchantDB[enchant] ~= nil then
		return LibGetEnchantDB[enchant]
	end
end