require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        lua = { "stylua" },
        python = { "black" },
        go = { "gofmt", "goimports" },
        cs = { "dotnet_format" },
        java = {}, -- rely on jdtls (LSP)
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
