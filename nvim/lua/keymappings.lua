vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle <CR>', { noremap = true , silent = true })

-- Использовать <Tab> для навигации по списку подсказок
vim.api.nvim_set_keymap("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : "<TAB>"', {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', {noremap = true, silent = true, expr = true})

-- Использовать <Enter> для подтверждения выбора
vim.api.nvim_set_keymap("i", "<CR>", 'coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"', {noremap = true, silent = true, expr = true})
