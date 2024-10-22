-- BOOTSTRAP

-- disable perl health check
vim.g.loaded_perl_provider = 0
-- disable netrw at very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- TODO Test with and without
vim.opt.termguicolors = true

local vim =  vim
local Plug = vim.fn['plug#']



-- INITIALIZE VIM-PLUG + LOAD PLUGINS
vim.call('plug#begin')


-- Dependencies
Plug('neovim/nvim-lspconfig')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-lua/plenary.nvim')         -- Dependency of telescope.nvim

-- Temporary, for learning neovim
Plug('ThePrimeagen/vim-be-good')
--Plug('m4xshen/hardtime.nvim')

-- Base
Plug('ms-jpq/coq_nvim')
Plug('ms-jpq/coq.artifacts')
Plug('ms-jpq/coq.thirdparty')
Plug('lewis6991/gitsigns.nvim')
Plug('echasnovski/mini.animate')
Plug('echasnovski/mini.comment')
Plug('echasnovski/mini.cursorword') 
Plug('echasnovski/mini.icons')      -- TODO Move to a Base section
Plug('echasnovski/mini.pairs')
Plug('echasnovski/mini.starter')    -- TODO: Configure
Plug('echasnovski/mini.statusline') -- TODO: Configure
Plug('echasnovski/mini.tabline')    -- TODO: Configure
Plug('nvim-tree/nvim-tree.lua')
Plug('tpope/vim-sensible')            

-- Theming
Plug('catppuccin/nvim', {['as'] = 'catppuccin'})

-- Functionality
Plug('smolck/command-completion.nvim') -- Low-starred and breakage warning in the README, but worth trying out until issues...
Plug('mattn/emmet-vim')
Plug('karb94/neoscroll.nvim')     -- TODO Find what this does
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8'})
Plug('folke/todo-comments.nvim')
Plug('folke/which-key.nvim') -- TODO Configure

vim.call('plug#end')



-- CORE CONFIGURATION
vim.wo.number = true     -- TODO: Line number toggle
vim.opt.expandtab = true -- Prefer spaces > tab characters
vim.opt.tabstop = 2      -- Number of spaces a tab char should represent
vim.opt.shiftwidth = 2   -- Number of spaces to use for each step of auto-indent

vim.cmd.colorscheme "catppuccin" -- Set the color scheme



-- PLUGIN CONFIGURATION

require('command-completion').setup({
	tab_completion = true
})
--require('comment').setup()
vim.g.coq_settings = {
	auto_start = true
}
require('gitsigns').setup()
--require('hardtime').setup()
require('mini.animate').setup()
require('mini.comment').setup()
require('mini.cursorword').setup()
require('mini.icons').setup()
require('mini.pairs').setup()
require('mini.starter').setup()
require('mini.statusline').setup()
require('mini.tabline').setup()
require('neoscroll').setup({ mappings = {} })
--require('nvim-autopairs').setup()
require('nvim-tree').setup()
