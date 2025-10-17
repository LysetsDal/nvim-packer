-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        config = function()
            vim.cmd('colorscheme rose-pine-moon')
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use({
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('neovim/nvim-lspconfig') -- LSP config
    use({
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp',    -- LSP completions
            'hrsh7th/cmp-buffer',      -- buffer words
            'hrsh7th/cmp-path',        -- file paths
            'hrsh7th/cmp-cmdline',     -- command-line completions
            'L3MON4D3/LuaSnip',        -- snippet engine
            'saadparwaiz1/cmp_luasnip' -- snippet completions
        }
    })
    use('stevearc/conform.nvim')
end)
