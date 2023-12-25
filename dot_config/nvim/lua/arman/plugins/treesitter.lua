local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = { "python", "cpp", "lua", "vim", "c", "go", "odin", "zig", "markdown", "make", "json", "javascript", "typescript", "html", "css" },
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { 'help' }, -- list of language that will be disabled
	},
	indent = { enable = true },
})
