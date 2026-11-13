local M = {}

--- @type GruvboxConfig
M.config = {
	flavor = "gruvbox",
	transparent = false,
	italic_comments = false,
	italic_functions = true,
	contrast = "low",
	theme = "dark",
	accent = "red",
	semantic_highlights = true,
	overrides = {},
	terminal_colors = true,
	markdown_docstring = {
		python = false,
	},
	extend = {
		todotxt = true,
	},
}

--- Colorscheme setup function
--- @param opts? GruvboxConfig
function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

--- Load the palette and apply all highlight groups
--- @param opts? GruvboxConfig
function M.load(opts)
	local config = opts and vim.tbl_deep_extend("force", M.config, opts) or M.config
	--- @type GruvboxPalette
	local palette = require("min.palette").get_palette(config.flavor, config.contrast, config.theme)
	--- @type HighlightTable
	local groups = require("min.groups").setup(palette, config)

	for group, settings in pairs(groups) do
		vim.api.nvim_set_hl(0, group, settings)
	end

	require("min.features").setup(palette, config)
end

return M
