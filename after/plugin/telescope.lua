local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {desc = 'Search .git files' })
vim.keymap.set('n', '<leader>ps', function()
	bultin.grep_string({ search = vim.fn.input("Grep >") });
end)
