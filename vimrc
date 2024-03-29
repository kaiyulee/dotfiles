set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()             " required
Plugin 'VundleVim/Vundle.vim'   " required

Plugin 'wakatime/vim-wakatime'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'morhetz/gruvbox'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'Yggdroot/indentLine'
Plugin 'mattn/emmet-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'junegunn/vim-easy-align'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'jwalton512/vim-blade'
Plugin 'ryanoasis/vim-devicons'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
Plugin 'StanAngeloff/php.vim'
Plugin 'posva/vim-vue'
Plugin 'elzr/vim-json'
Plugin 'chr4/nginx.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'pboettch/vim-cmake-syntax'

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

set t_Co=256
set number
" set relativenumber
set mouse=v
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
set termencoding=utf-8
set showtabline=0 " Always display the tabline, even if there is only one tab"
" Hide the default mode text (e.g. -- INSERT -- below the statusline)"
" set noshowmode
set backspace=2 "支持delete键
set ffs=unix "Default to Unix LF line endings"
set ambiwidth=single "single
set background=dark
colorscheme gruvbox "PaperColor
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg "隐藏~"
" let g:PaperColor_Theme_Options = {
  " \   'theme': {
  " \     'default': {
  " \       'transparent_background': 1
  " \     }
  " \   }
  " \ }
  "
  "
" colorscheme setting current gruvbox
let g:gruvbox_number_column='bg1'

set colorcolumn=120                     " visual indicator at column 120
set linespace=5                         " give the code some breathing room
set list listchars=tab:\ \ ,trail:∙       " Use "██" for tabs and "∙" for trailing spaces
set fillchars+=vert:                    " set vertical fillchar to "en space" (it's there, trust me) for tab splits

nnoremap <F2> :set nonumber!<CR>
" remove highlight after searching
nnoremap <silent> <esc> :noh<cr><esc>

" YouCompleteMe
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Close buffer
noremap <leader>c :bd<CR>

" NERDTree settings
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFocus<CR>
autocmd FileType nerdtree setlocal nolist
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.vscode$[[dir]]', '\.git$[[dir]]', '\.idea$[[dir]]', '\.swp$[[file]]', 'node_modules$[[dir]]']
let NERDSpaceDelims=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=5
let NERDTreeNaturalSort=1
" let NERDTreeStatusline=''
let NERDTreeAutoDeleteBuffer=1
let g:nerdtree_tabs_open_on_console_startup=0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

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
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '⎹⎸'
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#buf_label_first = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#checks = ['trailing']
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline_theme='gruvbox'
let g:airline_skip_empty_sections = 0
" let g:airline_section_c = airline#section#create_left(['%f', '%{strftime("%T")}'])

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
nnoremap <leader>. :CtrlPTag<cr>

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

if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete\ Mono:h14
    set linespace=2
endif

" vim-indent-guides setting
let g:indent_guides_start_level=2

" indentLine
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_fileType = ['php', 'go', 'js', 'html', 'vue', 'json']
let g:vim_json_syntax_conceal = 0
" let g:indentLine_leadingSpaceChar = '˽'
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_leadingSpaceEnabled = 1

let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '


