local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { 'akinsho/toggleterm.nvim', version = "*", config = true },
    { 'github/copilot.vim' },
    { 'nyoom-engineering/oxocarbon.nvim' },
    { "ThePrimeagen/harpoon", branch = "harpoon2" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "neovim/nvim-lspconfig" },
    { "nvim-telescope/telescope-ui-select.nvim" },
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
    {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    },
    { "tiagovla/tokyodark.nvim" },
    {
        "nmac427/guess-indent.nvim",
        config = function() require("guess-indent").setup {} end,
    }
}
local opts = {}
require("lazy").setup(plugins, opts)
