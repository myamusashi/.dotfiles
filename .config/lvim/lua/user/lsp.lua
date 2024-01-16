local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
    cmd = {
        "clangd",
        "--header-insertion=never"
    }
})

require('lspconfig').tsserver.setup({
    init_options = {
        preferences = {
            disableSuggestions = true,
        }
    }
})

local mason_lsp = require("mason-lspconfig.nvim")

mason_lsp.cssls.setup({
    settings = {
        css = {
            lint = {
                unknownAtRules = 'ignore',
            },
        },
    },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}
local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
for _, ls in ipairs(language_servers) do
    require('lspconfig')[ls].setup({
        capabilities = capabilities
        -- you can add other fields for setting up lsp server in this table
    })
end
