return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"bash",
				"c",
				"cmake",
				"cpp",
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
				"glsl",
				"hlsl",
				"linkerscript",
				"lua",
				"make",
				"nasm",
				"python",
				"rust",
				"strace",
				"toml",
				"vim",
				"vimdoc",
				"xml",
				"yaml",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
