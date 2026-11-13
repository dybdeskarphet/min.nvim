local M = {}

function M.setup(c, config)
	require("min.features.terminal").setup(c, config)
	require("min.features.docstring").setup(config)
	require("min.features.extend").setup(config)
end

return M
