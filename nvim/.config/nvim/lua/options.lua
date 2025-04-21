vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80,120"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = {
	tab = "▸ ",
	leadmultispace = "·",
	trail = "·",
	extends = "»",
	precedes = "«",
	nbsp = "␣",
}

vim.keymap.set("n", "<A-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<A-k>", "<cmd>cprev<CR>")

-- vim.keymap.set("n", "<A-Down>", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "<A-Up>", "<cmd>cprev<CR>")

vim.keymap.set({ "n", "v" }, "<Up>", "")
vim.keymap.set({ "n", "v" }, "<Down>", "")
vim.keymap.set({ "n", "v" }, "<Left>", "")
vim.keymap.set({ "n", "v" }, "<Right>", "")

vim.diagnostic.config({ virtual_text = true })
