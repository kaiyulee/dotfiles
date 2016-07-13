set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()             " required
Plugin 'VundleVim/Vundle.vim'   " required

Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'wincent/command-t'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'wincent/terminus'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'travisjeffery/vim-gotosymbol'
Plugin 'leshill/vim-json'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'junegunn/vim-easy-align'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'solarnz/thrift.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'junegunn/goyo.vim'
Plugin 'rakr/vim-one'
Plugin 'reedes/vim-colors-pencil'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'jwalton512/vim-blade'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader=","

syntax on

colorscheme zenburn
set t_Co=256
set background=dark
set number
set hlsearch
set ai
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set textwidth=160
set shiftwidth=4 et
set so=3 " context lines 始终距离顶部或者底部3行的距离
set smartcase
set ignorecase
set ruler
set title
set pastetoggle=<F9>
set cursorline "cursorcolumn 
set wrap "auto break line,[nowrap for the other side]
set laststatus=2 " Always show the status line
set encoding=utf-8
set showtabline=1 " Always display the tabline, even if there is only one tab"
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)"
set backspace=2 "支持delete键
set ffs=unix "Default to Unix LF line endings"
set mouse=a

nnoremap <F2> :set nonumber!<CR>
" remove highlight after searching
nnoremap <silent> <esc> :noh<cr><esc>

" NERDTree settings
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDSpaceDelims=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=5

" TagBar settings
nmap <F8> :TagbarToggle<CR>

let g:tagbar_autoclose=1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1

" airline settings
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '#'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='lucius'

let g:airline_section_c = airline#section#create_left(['%f', '%{strftime("%c")}'])
set fillchars+=stl:\ ,stlnc:\

" CtrlP <http://vimawesome.com/plugin/ctrlp-vim-state-of-grace>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
    " Exclude files and directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.tags,*/.idea/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|idea)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }

" CommandT
    " 设置 CommandT 搜索的路径为当前目录 , 可选 `file`, `dir`, `pwd`
let g:CommandTTraverseSCM = 'pwd'

" markdown preview
let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"
    " path to the chrome or the command to open chrome(or other modern browsers)

let g:mkdp_auto_start = 0
    " set to 1, the vim will open the preview window once enter the markdown
    " buffer

let g:mkdp_auto_open = 0
    " set to 1, the vim will auto open preview window when you edit the
    " markdown file

let g:mkdp_auto_close = 1
    " set to 1, the vim will auto close current preview window when change
    " from markdown buffer to another buffer

let g:mkdp_refresh_slow = 0
    " set to 1, the vim will just refresh markdown when save the buffer or
    " leave from insert mode, default 0 is auto refresh markdown as you edit or
    " move the cursor

" vim-easy-align
    " Start interactive EasyAlign in visual mode (e.g. vipga)
xmap al <Plug>(EashAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap al <Plug>(EasyAlign)

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:ctrlp_funky_matchtype = 'path' 
let g:ctrlp_funky_syntax_highlight = 1 " 语法高亮

" goto symbol
nmap <leader>T :GotoSymbol.

" macvim
if has("gui_running")
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
    " set guifont=Monaco\ for\ powerline:h12
    set guifont=Roboto\ Mono\ Thin\ for\ powerline:h12
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove right-hand scroll bar
    set guioptions-=l " remove left-hand scroll bar
    set guioptions-=L " remove left-hand scroll bar even if there is a vertical split
    set guioptions-=b " remove bottom scroll bar

    colorscheme hybrid_material
    set background=dark
    let g:airline_theme='hybridline'
    let g:indent_guides_auto_clolors = 0
    let g:indentLine_color_gui = '#4e4e4e'
    let g:indentLine_char = '┆'
endif

" vim-indent-guides setting
let g:indent_guides_start_level=2

" indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '┆'
