return {
	"Mofiqul/vscode.nvim",
	name = "vscode",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("vscode")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeDimText", { bg = "none" })
	end,
}
