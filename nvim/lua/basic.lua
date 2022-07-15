vim.g.mapleader = ','
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
vim.opt.cursorline  = true-- cursorcolumn
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
vim.opt.listchars = {tab = '  ', trail = '∙'}
vim.opt.fillchars = {vert = ' '}
vim.g['UltiSnipsExpandTrigger'] = '<c-e>'
vim.g['UltiSnipsJumpForwardTrigger='] = '<c-b>'
vim.g['UltiSnipsJumpBackwardTrigger'] = '<c-z>'
