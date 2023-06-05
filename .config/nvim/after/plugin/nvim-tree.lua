-- NVIM Tree
require("nvim-tree").setup({
    view = {
        width = 50,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-- Nvim tree
local api = require('nvim-tree.api')
vim.keymap.set('n', '<leader>tt', api.tree.toggle, {})
vim.keymap.set('n', '<leader>tr', api.tree.reload, {})
