local M = {}

--- @param c GruvboxPalette
--- @param config GruvboxConfig
--- @return HighlightTable
function M.setup(c, config)
	return {
		-- Syntax Colors
		Comment = { fg = c.cyan, italic = config.italic_comments },
		Constant = { fg = c.cyan },
		String = { fg = c.yellow },
		Character = { fg = c.base_15 },
		Number = { fg = c.base_15 },
		Boolean = { fg = c.cyan },
		Float = { fg = c.base_15 },
		Operator = { fg = c.base_10 },
		Identifier = { fg = c.base_15 },
		Function = { fg = c[config.accent], italic = config.italic_functions },
		Statement = { fg = c.base_15 },
		Conditional = { fg = c.base_15 },
		Repeat = { fg = c.base_15 },
		Label = { fg = c[config.accent] },
		Keyword = { fg = c.base_15 },
		Exception = { fg = c.base_15 },
		PreProc = { fg = c.base_15 },
		Include = { fg = c.base_15 },
		Define = { fg = c.base_15 },
		Macro = { fg = c.base_15 },
		PreCondit = { fg = c.base_15 },
		Type = { fg = c.base_15 },
		StorageClass = { fg = c.base_15 },
		Structure = { fg = c[config.accent] },
		Typedef = { fg = c[config.accent] },
		SpecialChar = { link = "Constant" },
		Tag = { fg = c.base_13 },
		Delimiter = { link = "Operator" },
		SpecialComment = { fg = c.cyan, italic = config.italic_comments },
		Debug = { fg = c.orange },
		Special = { fg = c.base_12 },
		Error = { fg = c.red, bg = c.bg_red },
		Todo = { fg = c.base_00, bg = c.green },
		Added = { fg = c.green },
		Changed = { fg = c.blue },
		Removed = { fg = c.red },

		-- Treesitter Syntax Colors
		["@variable"] = { link = "Identifier" },
		["@constant.builtin"] = { link = "Constant" },
		["@function.builtin"] = { link = "Function" },
		["@function.call"] = { fg = c.base_12, italic = config.italic_functions },
		["@function.method.call"] = { fg = c.base_12, italic = config.italic_functions },
		["@comment.error"] = { bg = c.red, fg = c.bg_red },
		["@comment.warning"] = { bg = c.orange, fg = c.bg_orange },
		["@comment.todo"] = { bg = c.green, fg = c.bg_green },
		["@comment.note"] = { bg = c.blue, fg = c.bg_blue },

		--- todo.txt TS
		["@type.todotxt"] = { fg = c[config.accent], bg = c["bg_" .. config.accent] },
		["@string.todotxt"] = { fg = c.cyan },
		["@comment.todotxt"] = { fg = c.base_10 },
		["@keyword.todotxt"] = { fg = c.base_15, bold = true },
		["@min.todotxt.pri_high"] = { fg = c.base_15, bold = true },
		["@min.todotxt.pri_low"] = { fg = c.base_15, bold = false, nocombine = true },
		["@gruvbox_minimal.todotxt.pri_high"] = { link = "@min.todotxt.pri_high" },
		["@gruvbox_minimal.todotxt.pri_low"] = { link = "@min.todotxt.pri_low" },

		-- SQL
		["@string.sql"] = { link = "String" },
		["@boolean.sql"] = { link = "Boolean" },
		["@number.sql"] = { link = "Number" },
		["@function.call.sql"] = { fg = c[config.accent] },
		["@keyword.sql"] = { fg = c.base_15 },
		["@keyword.operator.sql"] = { link = "Operator" },
		["@operator.sql"] = { link = "Operator" },
		["@punctuation.sql"] = { link = "Operator" },
		["@keyword.conditional.sql"] = { italic = true },

		-- "Min.." colors in case user wants to use them or I want to add a query
		MinRed = { fg = c.red },
		MinOrange = { fg = c.orange },
		MinYellow = { fg = c.yellow },
		MinGreen = { fg = c.green },
		MinCyan = { fg = c.cyan },
		MinBlue = { fg = c.blue },
		MinMagenta = { fg = c.magenta },
		MinAccent = { fg = c[config.accent] },
		MinBadge = { fg = c[config.accent], bg = c["bg_" .. config.accent], bold = true },

		-- Backwards-compatible "GruvboxMinimal.." aliases
		GruvboxMinimalRed = { link = "MinRed" },
		GruvboxMinimalOrange = { link = "MinOrange" },
		GruvboxMinimalYellow = { link = "MinYellow" },
		GruvboxMinimalGreen = { link = "MinGreen" },
		GruvboxMinimalCyan = { link = "MinCyan" },
		GruvboxMinimalBlue = { link = "MinBlue" },
		GruvboxMinimalMagenta = { link = "MinMagenta" },
		GruvboxMinimalAccent = { link = "MinAccent" },
		GruvboxMinimalBadge = { link = "MinBadge" },
	}
end

return M
