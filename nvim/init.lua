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
