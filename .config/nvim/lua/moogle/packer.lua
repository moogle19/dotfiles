-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-tree/nvim-tree.lua',
        config = function()
            require("nvim-tree").setup {}
        end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
        }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            local colorscheme = 'colorscheme rose-pine'
            vim.cmd(colorscheme)
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
end)
