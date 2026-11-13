local M = {}

--- @type table<ColorschemeFlavor, FlavorSpec>
local registry = {
	gruvbox = require("min.flavors.gruvbox"),
	monokai = require("min.flavors.monokai"),
	kanagawa = require("min.flavors.kanagawa"),
}

--- Resolve a flavor specification by name, defaulting to gruvbox
--- @param flavor? ColorschemeFlavor
--- @return FlavorSpec
function M.get(flavor)
	return registry[flavor] or registry.gruvbox
end

return M
