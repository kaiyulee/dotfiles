set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()             " required
Plugin 'VundleVim/Vundle.vim'   " required

Plugin 'mhinz/vim-startify'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'wincent/terminus'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'rakr/vim-one'
Plugin 'lifepillar/vim-wwdc16-theme'
Plugin 'lifepillar/vim-solarized8'
Plugin 'travisjeffery/vim-gotosymbol'
Plugin 'leshill/vim-json'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'junegunn/vim-easy-align'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jwalton512/vim-blade'
Plugin 'ryanoasis/vim-devicons'

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

set background=dark
set t_Co=256
set number
" set relativenumber
set hlsearch
set ai
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set textwidth=160
set shiftwidth=4 et
" set so=10 " context lines 始终距离顶部或者底部3行的距离
set smartcase
set ignorecase
set ruler
set title
set pastetoggle=<F9>
set cursorline "cursorcolumn 
set wrap "auto break line,[nowrap for the other side]
set laststatus=2 " Always show the status line
set encoding=utf-8
set termencoding=utf-8
set showtabline=1 " Always display the tabline, even if there is only one tab"
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)"
set backspace=2 "支持delete键
set ffs=unix "Default to Unix LF line endings"
set mouse=a
set fillchars+=vert:\ ,stl:\ ,stlnc:\ 
set list
set listchars=eol:¬,tab:>\ ,space:\ 
set ambiwidth=single "single

" For wwdc16 colorscheme
" let g:wwdc16_term_italics = 1
" let g:wwdc16_term_trans_bg = 1
colorscheme one "quantum  wwdc16

nnoremap <F2> :set nonumber!<CR>
" remove highlight after searching
nnoremap <silent> <esc> :noh<cr><esc>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Close buffer
noremap <leader>c :bd<CR>

" NERDTree settings
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDSpaceDelims=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=5
let g:NERDTreeDirArrowExpandable = '○'
let g:NERDTreeDirArrowCollapsible = '●'

" TagBar settings
nmap <F8> :TagbarToggle<CR>
let g:tagbar_vertical = 30
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

" if !exists('g:airline_symbols')
  " let g:airline_symbols = {}
" endif
" let g:airline_symbols.space = "\ua0"

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '⎹⎸'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = ['trailing']
let g:airline#extensions#ycm#enabled = 1
let g:airline_theme='one' "quantum
let g:airline_skip_empty_sections = 1
let g:airline_section_b = airline#section#create_left(['branch'])
let g:airline_section_c = airline#section#create_left(['%f', '%{strftime("%T")}'])

" CtrlP <http://vimawesome.com/plugin/ctrlp-vim-state-of-grace>
set wildmode=list:longest,list:full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.tags,*/.idea/*,*.o,*.obj,.git,*.rbc,*.pyc,__pycache__     " MacOSX/Linux
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
    " Exclude files and directories
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|idea|node_modules|target|dist)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:ctrlp_use_caching = 1

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

if has("termguicolors")
    set termguicolors
endif

" macvim
if has("gui_running")
    set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h14
    set guioptions-=T " remove toolbar
    set guioptions-=r " remove right-hand scroll bar
    set guioptions-=l " remove left-hand scroll bar
    set guioptions-=L " remove left-hand scroll bar even if there is a vertical split
    set guioptions-=b " remove bottom scroll bar

    set background=dark
    colorscheme quantum
    let g:airline_theme='quantum'
    let g:indent_guides_auto_clolors = 0
    let g:indentLine_color_gui = '#4e4e4e'
    let g:indentLine_char = '┊'
    let g:webdevicons_enable = 1
    let g:nerdtree_tabs_open_on_gui_startup=0
endif

" vim-indent-guides setting
let g:indent_guides_start_level=2

" indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
" let g:indentLine_leadingSpaceChar = '˽'
" let g:indentLine_leadingSpaceChar = '·'
" let g:indentLine_leadingSpaceEnabled = 1

map <Leader>nt :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

