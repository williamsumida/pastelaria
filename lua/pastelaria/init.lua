local M = {}

function SetAllHighlights(fg, bg)
	-- Get the list of all highlight groups
	local hl_groups = vim.fn.getcompletion("", "highlight")

	-- Set the same colors for all groups
	for _, group in ipairs(hl_groups) do
		vim.api.nvim_set_hl(0, group, { fg = fg, bg = bg })
	end
end

-- Call the function with your desired colors

-- paleta de cores
-- default: #FFF6E3
-- comentarios: #B7B7B7
--
function M.setup()
	SetAllHighlights("#FFF6E3", "#000000") -- White text on black background
	vim.cmd("highlight clear")
	vim.cmd("syntax reset")

	SetAllHighlights("#FFF6E3", "#000000") -- White text on black background
	vim.api.nvim_set_hl(0, "Normal", { fg = "#FFF6E3", bg = "#000000" })
	vim.api.nvim_set_hl(0, "Comment", { fg = "#B7B7B7", bg = "#000000" })
	vim.api.nvim_set_hl(0, "Keyword", { fg = "#FFF6E3", bg = "#000000" })
	vim.api.nvim_set_hl(0, "Function", { fg = "#FFF6E3", bg = "#000000" })
	vim.g.colors_name = "pastelaria"
end

return M
