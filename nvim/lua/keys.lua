local map = vim.api.nvim_set_keymap

map('n', '<leader><leader>', '<C-^>', {noremap = true, silent = true})

map('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true })
map('n', '<leader>hu', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })
map('n', '<leader>ht1', ':lua require("harpoon.term").gotoTerminal(1)<CR>',{noremap = true})

map('n', '<leader>ff', ':lua require("telescope.builtin").find_files()<CR>',{noremap = true})
map('n', '<leader>fg', ':lua require("telescope.builtin").live_grep()<CR>',{noremap = true})

map('n', '<leader>.' , ':lua vim.lsp.buf.code_action()<CR>', {noremap = true})

-- This somehow maps to ctrl + / 
map('n', '<C-_>', ':lua require("Comment.api").toggle_current_linewise({})<CR>', {})
map('x', '<C-_>', ':lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>', {})

