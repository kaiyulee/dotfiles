--
-- ___      ___  ___  ___  _____  ___  ___      ___  __     ___      ___ 
-- |"  \    /"  ||"  \/"  |(\"   \|"  \|"  \    /"  ||" \   |"  \    /"  |
--  \   \  //   | \   \  / |.\\   \    |\   \  //  / ||  |   \   \  //   |
--  /\\  \/.    |  \\  \/  |: \.   \\  | \\  \/. ./  |:  |   /\\  \/.    |
-- |: \.        |  /   /   |.  \    \. |  \.    //   |.  |  |: \.        |
-- |.  \    /:  | /   /    |    \    \ |   \\   /    /\  |\ |.  \    /:  |
-- |___|\__/|___||___/      \___|\____\)    \__/    (__\_|_)|___|\__/|___|
                                                                       

--
vim.bo.filetype = 'off'

require('plugins')
require('basic')
require('settings.misc')
require('settings.coc')
require('mapping')

-- 隐藏~
-- vim.cmd 'hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg'

-- colorscheme setting current gruvbox


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

-- plugin fzf
--
-- - Popup window (center of the current window)
-- let $FZF_DEFAULT_OPTS = '--reverse'
vim.cmd[[
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8, 'relative': v:true } }
  command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview-window', 'down', '--preview', '~/.vim/plugged/fzf.vim/bin/preview.sh {}']}, <bang>0)
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
