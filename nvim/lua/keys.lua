local map = vim.api.nvim_set_keymap

map('n', '<leader><leader>', '<C-^>', {noremap = true, silent = true})

map('n', '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true })
map('n', '<leader>hu', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })
map('n', '<leader>ht1', ':lua require("harpoon.term").gotoTerminal(1)<CR>',{noremap = true})
