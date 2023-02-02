vim.g.mapleader = ','
vim.bo.filetype = 'off'
vim.opt.autoindent = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true;
vim.opt.mouse='v'
vim.opt.hlsearch = true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.textwidth=160
vim.opt.shiftwidth=4
-- context lines 始终距离顶部或者底部3行的距离
vim.opt.so=3
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.ruler = true
vim.opt.title = true
vim.opt.pastetoggle='<F9>'
vim.opt.cursorline  = true -- cursorcolumn
vim.opt.wrap = true-- auto break line,[nowrap for the other side]
vim.opt.laststatus=2 -- Always show the status line
vim.opt.encoding='utf8'
-- vim.opt.termencoding='utf8'
vim.opt.showtabline=0 -- Always display the tabline, even if there is only one tab"
-- Hide the default mode text (e.g. -- INSERT -- below the statusline)"
-- vim.opt. noshowmode
-- vim.opt.backspace=2 -- 支持delete键
vim.opt.ffs='unix'  -- Default to Unix LF line endings"
vim.opt.ambiwidth='single'

-- vim.opt. colorcolumn=85                     " visual indicator at column 120
vim.opt.linespace=5                         -- give the code some breathing room
vim.opt.list = true
--vim.opt.listchars = {tab = '  ', trail = '∙'}
vim.opt.fillchars = {vert = ' ', eob = ' ', msgsep = '‾'}
vim.opt.redrawtime = 10000 -- syntax enable for big file
vim.g['UltiSnipsExpandTrigger'] = '<c-e>'
vim.g['UltiSnipsJumpForwardTrigger='] = '<c-b>'
vim.g['UltiSnipsJumpBackwardTrigger'] = '<c-z>'

--phpactor
vim.cmd[[
autocmd FileType php set iskeyword+=$
]]
-- TextEdit might fail if hidden is not set.
vim.opt.hidden = true

-- Some servers have issues with backup files, see #649.
-- set nobackup
-- set nowritebackup

-- Give more space for displaying messages.
-- set cmdheight=2

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime=100

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess = vim.opt.shortmess +'c'

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
vim.opt.signcolumn='yes'


-- Highlight the symbol and its references when holding the cursor.
vim.cmd[[
  autocmd CursorHold * silent call CocActionAsync('highlight')
  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end


  " Add `:Format` command to format current buffer.
  command! -nargs=0 Format :call CocAction('format')

  " Add `:Fold` command to fold current buffer.
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " Add `:OR` command for organize imports of the current buffer.
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  " Add (Neo)Vim's native statusline support.
  " NOTE: Please see `:h coc-status` for integrations with external plugins that
  " provide custom statusline: lightline.vim, vim-airline.
  set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
]]

vim.g['coc_node_path'] = '/usr/local/bin/node'

-- plugin fzf
--
-- - Popup window (center of the current window)
-- let $FZF_DEFAULT_OPTS = '--reverse'
--vim.cmd[[
  --let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8, 'relative': v:true } }
  --command! -bang -nargs=? -complete=dir Files
      --\ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview-window', 'down', '--preview', '~/.local/share/nvim/site/pack/packer/start/fzf.vim/bin/preview.sh {}']}, <bang>0)
--]]

vim.cmd [[
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline', '--preview-window=up']}), <bang>0)
]]

-- Customize fzf colors to match your color scheme
-- - fzf#wrap translates this to a set of `--color` options
local fzf_colors = {
   fg=      {'fg', 'Normal'},
   bg=      {'bg', 'Normal'},
   hl=      {'fg', 'Comment'},
   ["fg+"]=     {'fg', 'CursorLine', 'CursorColumn', 'Normal'},
   ["bg+"]=     {'bg', 'CursorLine', 'CursorColumn'},
   ["hl+"]=     {'fg', 'Statement'},
   info=    {'fg', 'PreProc'},
   border=  {'fg', 'Ignore'},
   prompt=  {'fg', 'Conditional'},
   pointer= {'fg', 'Exception'},
   marker=  {'fg', 'Keyword'},
   spinner= {'fg', 'Label'},
   header=  {'fg', 'Comment'}
  }
vim.g['fzf_colors'] = fzf_colors

-- Enable per-command history
-- - History files will be stored in the specified directory
-- - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
--   'previous-history' instead of 'down' and 'up'.
vim.g['fzf_history_dir'] = '~/.local/share/fzf-history'


-- plugin editorconfig
vim.g['EditorConfig_exclude_patterns'] = 'fugitive://.*'
vim.cmd[[
au FileType gitcommit let b:EditorConfig_disable = 1
]]

-- nginx ls
vim.cmd[[

augroup custom_nginx
  autocmd!
  autocmd FileType nginx setlocal iskeyword+=$
  autocmd FileType nginx let b:coc_additional_keywords = ['$']
augroup end

]]


