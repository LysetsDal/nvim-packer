vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<C-d>", "<Del>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-f>", "<Backspace>", { noremap = true, silent = true })
vim.keymap.set("i", "jj", "<Esc>", { noremap = false })

-- copy to system clipboard (macOS uses * instead of +)
vim.keymap.set({ "n", "v" }, "<leader>y", [["*y]])
-- copy entire line into system clipboard
vim.keymap.set("n", "<leader>Y", [["*Y]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
