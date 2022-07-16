require("nvim-lsp-installer").setup({
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- Let's make editing our nvim lua config a bit easier:
require("lspconfig").sumneko_lua.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = {'vim'}
            }
        }
    }
})

require("lspconfig").rust_analyzer.setup({
    tools = {
        hover_with_actions = true,
        inlay_hints = {
            show_paramter_hints = true,
        }
    },
    server = {
        settings = {
            ["rust-analyzer"] = {
                inlayHints = {
                }
            }
        }
    },
    capabilities = updated_capabilities
})
