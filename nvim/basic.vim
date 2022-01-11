let mapleader=","

set t_Co=256
set number
set relativenumber
set mouse=v
set hlsearch
"set smartindent
"set cindent
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
set encoding=utf8
set termencoding=utf8
set showtabline=0 " Always display the tabline, even if there is only one tab"
" Hide the default mode text (e.g. -- INSERT -- below the statusline)"
" set noshowmode
set backspace=2 "支持delete键
set ffs=unix "Default to Unix LF line endings"
set ambiwidth=single "single
set background=dark

" set colorcolumn=85                     " visual indicator at column 120
set linespace=5                         " give the code some breathing room
set list listchars=tab:\ \ ,trail:∙       " Use "██" for tabs and "∙" for trailing spaces
set fillchars+=vert:                    " set vertical fillchar to "en space" (it's there, trust me) for tab splits

" It can be really annoying when you keep hitting the F1 key accidentally, and the Help screen pops up
map <F1> <Esc>
imap <F1> <Esc>

" open file under cursor
map <F8> :vertical wincmd f<CR>
imap <F8> :vertical wincmd f<CR>

nnoremap <F2> :set nonumber!<CR>
" remove highlight after searching
nnoremap <silent> <esc> :noh<cr><esc>

" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Close buffer
noremap <leader>c :bd<CR>

if has("termguicolors")
    set termguicolors
endif

if has("gui_running")
    echo "yes, we have a GUI"
    set guifont=Anonymice\ Nerd\ Font\ Complete\ Mono:h11
    set linespace=2
endif

let g:phpactorPhpBin = "/usr/local/opt/php@8.0/bin/php"
