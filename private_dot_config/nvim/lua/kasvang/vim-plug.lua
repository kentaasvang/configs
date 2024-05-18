
-- Begin plugin installation
vim.cmd [[
call plug#begin('~/.local/share/nvim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
]]
