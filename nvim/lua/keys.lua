local map = vim.api.nvim_set_keymap

map('n', '<leader><leader>', '<C-^>', {noremap = true, silent = true})

map('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true })
map('n', '<leader>hu', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })
map('n', '<leader>ht1', ':lua require("harpoon.term").gotoTerminal(1)<CR>',{noremap = true})

map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>',{noremap = true})
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>',{noremap = true})
map('n', '<leader>fd', ':lua require("telescope.builtin").diagnostics()<CR>',{noremap = true})
map('n', '<leader>fe', ':lua require("telescope.builtin").diagnostics({severity = vim.diagnostic.severity.ERROR})<CR>',{noremap = true})

map('n', '<leader>.' , ':lua vim.lsp.buf.code_action()<CR>', {noremap = true})

local comment = require('Comment.api');
local esc = vim.api.nvim_replace_termcodes(
    '<ESC>', true, false, true
)

-- This somehow maps to ctrl + / 
vim.keymap.set('n', '<C-_>', function() comment.toggle.linewise.current() end, {})
vim.keymap.set('x', '<C-_>', function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    comment.toggle.linewise(vim.fn.visualmode())
end, {})

