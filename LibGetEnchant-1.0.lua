local MAJOR_VERSION = "LibGetEnchant-1.0"
local MINOR_VERSION = 1
if not LibStub then error(MAJOR_VERSION .. " requires LibStub.") end
local lib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not lib then return end

function lib.GetEnchant(enchantID)
	local enchant = tonumber(enchantID)
	if LibGetEnchantDB[enchant] ~= nil then
		return LibGetEnchantDB[enchant]
	end
end