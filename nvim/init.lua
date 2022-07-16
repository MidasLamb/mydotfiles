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
-- TODO: Extract cmp & snippets to a separate file
local luasnip = require('luasnip')
local cmp = require('cmp')

cmp.setup({
    mapping = {
         ['<C-Space>'] = cmp.mapping(cmp.mapping.complete()),
         ['<CR>'] = cmp.mapping.confirm({ select = true })
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
            -- TODO: add the kind properly
            -- item.kind = 'aha'

            return item
        end,
    },
})

-- TODO: extract
vim.highlight.create('MatchParen', {cterm='underline', ctermbg='none'}, false); -- Make the parenthesis matching clearer

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.highlight.create('Pmenu', {ctermbg='none'}, false);
