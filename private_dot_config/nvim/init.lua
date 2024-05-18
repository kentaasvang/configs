-- Begin plugin installation
vim.cmd [[
call plug#begin('~/.local/share/nvim/plugged')

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
]]

-- Install Coc Plugins
vim.g.coc_global_extensions = {"coc-pyright"}

-- Settings
vim.o.encoding = 'utf-8'
vim.o.backup = false
vim.o.writebackup = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.updatetime = 300
vim.wo.signcolumn = 'yes'

-- Key mappings
vim.api.nvim_set_keymap('i', '<TAB>', 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_backspace() ? "<TAB>" : coc#refresh()', {expr = true, noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<S-TAB>', 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', {expr = true, noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<CR>', 'coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"', {expr = true, noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-Space>', 'coc#refresh()', {expr = true, noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {silent = true})
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {silent = true})
vim.api.nvim_set_keymap('n', 'K', ':lua show_documentation()<CR>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', '<C-c>', '"+y', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-c>', '"+y', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', {noremap = true, silent = true})

-- Functions
function _G.check_backspace()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end

function _G.show_documentation()
  if vim.fn['CocAction']('hasProvider', 'hover') then
    vim.fn['CocActionAsync']('doHover')
  else
    vim.fn.feedkeys('K', 'in')
  end
end
