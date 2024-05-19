local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
	builtin.find_files({previewer = false })
end, {})

vim.keymap.set('n', '<C-p>', function()
	builtin.git_files({previewer = false })
end, {})

