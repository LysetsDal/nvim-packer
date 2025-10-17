local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
    local buf_map = function(mode, lhs, rhs, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Example keymaps; adjust as you like
    buf_map("n", "gr", vim.lsp.buf.references)
    buf_map("n", "<leader>ca", vim.lsp.buf.code_action)
    buf_map('n', 'K', vim.lsp.buf.hover)
    buf_map('n', 'gd', vim.lsp.buf.definition)
    buf_map('n', '<leader>vrr', vim.lsp.buf.references)
    buf_map('n', '<leader>vrn', vim.lsp.buf.rename)
    buf_map('n', '<leader>vca', vim.lsp.buf.code_action)
    buf_map('n', '[d', vim.diagnostic.goto_prev)
    buf_map('n', ']d', vim.diagnostic.goto_next)
    buf_map('i', '<C-h>', vim.lsp.buf.signature_help)
    buf_map('n', '<leader>vd', vim.diagnostic.open_float)
    buf_map('n', '<leader>vws', vim.lsp.buf.workspace_symbol)
    buf_map('n', '<leader>f', function()
        vim.lsp.buf.format({ async = true })
    end)
end

-- Lua
vim.lsp.config('luals', {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', 'luarc.json' },
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.enable('luals')

-- C# (using omnisharp)
vim.lsp.config('omnisharp', {
    cmd = {},
    filetypes = { 'cs' },
    root_markers = { '*.sln', '*.csproj' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('omnisharp')

-- Java (using jdtls)
vim.lsp.config('jdtls', {
    cmd = { 'jdtls' },
    filetypes = { 'java' },
    root_markers = { 'pom.xml', 'build.gradle', '.git' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('jdtls')

-- JavaScript / TypeScript (using tsserver)
vim.lsp.config('tsserver', {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
    root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('tsserver')

-- JSON (using jsonls)
vim.lsp.config('jsonls', {
    cmd = { 'vscode-json-languageserver', '--stdio' },
    filetypes = { 'json' },
    root_markers = { '.git' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('jsonls')

-- Go (using gopls)
vim.lsp.config('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_markers = { 'go.mod', '.git' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('gopls')

-- Python (using pyright)
vim.lsp.config('pyright', {
    cmd = { 'pyright-langserver', '--stdio' },
    filetypes = { 'python' },
    root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git' },
    on_attach = on_attach,
    capabilities = capabilities,
})
vim.lsp.enable('pyright')
