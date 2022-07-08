-- LEADER
vim.g.mapleader = " "

-- IMPORTS
require('vars')         -- Variables
require('opts')         -- Options
require('plugins')      -- Plugins
require('keys')         -- Keymaps
require('lsp')          -- All the lsp configs!

require('nvim-treesitter.configs').setup({
    ensure_installed = {"lua"}
})

require('harpoon').setup({
})

local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
    mapping = {
         ['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lsp_signature_help' },
    }),
    window = {
        completion = {
            border = 'rounded'
        },
        documentation = {
            border = 'rounded'
        }
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
    experimental = { native = false, ghost_text = true },
    formatting = {
        format = function(entry, item)
            local menu_map = {
                buffer = '[Buf]',
                nvim_lsp = '[LSP]',
                nvim_lua = '[API]',
                path = '[Path]',
                luasnip = '[Snip]',
                rg = '[RG]',
            }

            item.menu = menu_map[entry.source.name] or string.format('[%s]', entry.source.name)
            item.kind = 'aha'

            return item
        end,
    },
})

