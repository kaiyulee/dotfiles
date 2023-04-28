vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use { 'junegunn/fzf', run = './install --bin', }
    use { 'ibhagwan/fzf-lua'}
    use 'wakatime/vim-wakatime'
    use { 'phpactor/phpactor', { ['for'] = 'php', tag = '*', ['do'] = 'composer install --no-dev -o' } }
    --use 'Yggdroot/indentLine'
    use "lukas-reineke/indent-blankline.nvim"
    use { 'prettier/vim-prettier', { ['do'] = 'yarn install' } }
    use 'mhinz/vim-startify'
    use 'karb94/neoscroll.nvim'
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use 'liuchengxu/vim-which-key'
    use 'elzr/vim-json'
    use {
      'lewis6991/gitsigns.nvim',
    }
    use 'kevinoid/vim-jsonc'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-fugitive'
    use 'nvim-lua/plenary.nvim'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'APZelos/blamer.nvim'
    use 'terryma/vim-multiple-cursors'
    use 'junegunn/vim-easy-align'
    use 'easymotion/vim-easymotion'
    use 'jiangmiao/auto-pairs'
    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
        require"telescope".load_extension("frecency")
      end,
      requires = {"kkharji/sqlite.lua"}
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'junegunn/goyo.vim'
    use 'editorconfig/editorconfig-vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'xiyaowong/nvim-transparent'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }



    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    use 'honza/vim-snippets'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true  }
    }
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'
    use 'john2x/flatui.vim'
    use 'lifepillar/vim-solarized8'
    use 'ryanoasis/vim-devicons'
    use 'f-person/auto-dark-mode.nvim'
    use { '4513ECHO/vim-colors-hatsunemiku' }
    use { 'projekt0n/github-nvim-theme' }
    use { 'flazz/vim-colorschemes' }
    use { 'relastle/bluewery.vim' }
    use { 'raphamorim/lucario' }
    use "fladson/vim-kitty"
    use { 'numToStr/Comment.nvim' }
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
    }


    -- LSP installer --
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    use 'gbrlsnchs/telescope-lsp-handlers.nvim'

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- symbols outline --
    use 'simrat39/symbols-outline.nvim'

    use 'weilbith/nvim-code-action-menu'


    -- popups --
    use({
      "folke/noice.nvim",
      requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
        }
    })
end)
