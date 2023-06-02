require("moogle.packer")
require("moogle.set")
require("moogle.remap")

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

-- Treesitter
require("nvim-treesitter.configs").setup({
    ensure_installed = { "elixir", "lua", "erlang", "go", "rust", "javascript" },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true
    }
})

-- Telescope (File search)
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require("moogle.lualine")

require('telescope').load_extension('fzf')



vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- Colorscheme
local colorscheme = 'colorscheme rose-pine'
vim.cmd(colorscheme)
