-- vim-plug
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('phpactor/phpactor', {['for'] = 'php', tag = '*', ['do'] = 'composer install --no-dev -o'})
Plug 'Yggdroot/indentLine'
Plug('prettier/vim-prettier', { ['do'] = 'yarn install' })
Plug 'scrooloose/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'karb94/neoscroll.nvim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug('iamcco/markdown-preview.nvim', { ['do'] = 'cd app && yarn install' })
Plug 'liuchengxu/vim-which-key'
Plug 'elzr/vim-json'
Plug 'kevinoid/vim-jsonc'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'APZelos/blamer.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/incsearch.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install']})
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
Plug 'junegunn/goyo.vim'
Plug 'editorconfig/editorconfig-vim'
-- colorscheme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'ryanoasis/vim-devicons'
vim.call('plug#end')

