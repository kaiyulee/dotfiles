set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'wincent/command-t'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
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
Plugin 'Shougo/neocomplete.vim'
Plugin 'junegunn/vim-easy-align'
" Plugin 'tweekmonster/local-indent.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
"Plugin 'luochen1990/rainbow'
Plugin 'solarnz/thrift.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'junegunn/goyo.vim'
Plugin 'amix/vim-zenroom2'

" All of your Plugins must be added before the following line
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

set number
set hlsearch
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set expandtab
set textwidth=160
set shiftwidth=4
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

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

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
let g:airline_theme='distinguished'
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

" NeoComplete config
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" ctrlp-funky
nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:ctrlp_funky_matchtype = 'path' 
let g:ctrlp_funky_syntax_highlight = 1 " 语法高亮

" local indent config
autocmd FileType * LocalIndentGuide +hl +cc
    " highlight LocalIndentGuide ctermfg=5 ctermbg=0 cterm=inverse

" goto symbol
nmap <leader>T :GotoSymbol.

" 彩虹括号
" 等待issue修复let g:rainbow_active = 1

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
    let g:airline_theme='hybridline'
endif

