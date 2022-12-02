vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    use {'neoclide/coc.nvim', branch = 'release'}
    use {'phpactor/phpactor', {['for'] = 'php', tag = '*', ['do'] = 'composer install --no-dev -o'}}
    --use 'Yggdroot/indentLine'
    use "lukas-reineke/indent-blankline.nvim"
    use {'prettier/vim-prettier', { ['do'] = 'yarn install' }}
    use 'scrooloose/nerdcommenter'
    use 'mhinz/vim-startify'
    use 'karb94/neoscroll.nvim'
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
    use 'liuchengxu/vim-which-key'
    use 'elzr/vim-json'
    use 'kevinoid/vim-jsonc'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-fugitive'
    use 'lewis6991/gitsigns.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'APZelos/blamer.nvim'
    use 'terryma/vim-multiple-cursors'
    use 'junegunn/vim-easy-align'
    use 'haya14busa/incsearch.vim'
    use 'easymotion/vim-easymotion'
    use 'jiangmiao/auto-pairs'
    use {'junegunn/fzf', { ['do'] = vim.fn['fzf#install']}}
    use 'junegunn/fzf.vim'
    use 'antoinemadec/coc-fzf'
    use 'junegunn/goyo.vim'
    use 'editorconfig/editorconfig-vim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'xiyaowong/nvim-transparent'
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
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
end)
