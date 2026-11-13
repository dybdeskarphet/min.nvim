local M = {}

local flavors = require("min.flavors")

--- Populate base_00..base_15 onto result from either per-theme or flippable ramps
--- @param result table<string, string>
--- @param base FlavorBaseRamp | table<GruvboxTheme, FlavorBaseRamp>
--- @param theme GruvboxTheme
local function apply_base_colors(result, base, theme)
	local theme_base = base[theme]
	if theme_base then
		for i = 0, 15 do
			local key = string.format("base_%02d", i)
			result[key] = theme_base[key]
		end
		return
	end

	for i = 0, 15 do
		local key = string.format("base_%02d", i)
		local target_index = (theme == "light") and (15 - i) or i
		local target_key = string.format("base_%02d", target_index)
		result[key] = base[target_key]
	end
end

--- Generate the palette based on flavor, contrast, and theme
--- @param flavor? ColorschemeFlavor
--- @param contrast? GruvboxContrast
--- @param theme? GruvboxTheme
--- @return GruvboxPalette
function M.get_palette(flavor, contrast, theme)
	theme = (theme == "dark") and "dark" or "light"
	contrast = (contrast == "low") and "low" or "high"

	local spec = flavors.get(flavor)
	local theme_accents = spec.accents[theme]
	local accent_table = theme_accents[contrast] or theme_accents.default or theme_accents

	local result = vim.tbl_extend("force", {}, accent_table)
	apply_base_colors(result, spec.base, theme)

	return result
end

return M
