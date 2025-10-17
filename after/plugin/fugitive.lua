-- nvim/after/plugin/fugitive.lua

-- open Fugitive status
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local lysetsdal_Fugitive = vim.api.nvim_create_augroup("lysetsdal_Fugitive", {})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWinEnter", {
	group = lysetsdal_Fugitive,
	pattern = "*",
	callback = function()
		if vim.bo.ft ~= "fugitive" then
			return
		end

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }

		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git("push")
		end, opts)

		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, opts)

		vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)

		vim.keymap.set("n", "<leader>c", function()
			vim.cmd.Git("commit")
		end, opts)
	end,
})
