-- Keybindings

-- map helper
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local function xmap(lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('x', lhs, rhs, options)
end
local function nmap(lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('n', lhs, rhs, options)
end
local function vmap(lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('v', lhs, rhs, options)
end
local function imap(lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('i', lhs, rhs, options)
end
local function omap(lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('o', lhs, rhs, options)
end

-- vim-which-key
map('n', '<Leader> ', ':WhichKey <Space>');

-- airline settings
map('n', '<leader>1', '<Plug>AirlineSelectTab1')
map('n', '<leader>2', '<Plug>AirlineSelectTab2')
map('n', '<leader>3', '<Plug>AirlineSelectTab3')
map('n', '<leader>4', '<Plug>AirlineSelectTab4')
map('n', '<leader>5', '<Plug>AirlineSelectTab5')
map('n', '<leader>6', '<Plug>AirlineSelectTab6')
map('n', '<leader>7', '<Plug>AirlineSelectTab7')
map('n', '<leader>8', '<Plug>AirlineSelectTab8')
map('n', '<leader>9', '<Plug>AirlineSelectTab9')
map('n', '<leader>9', '<Plug>AirlineSelectTab9')
map('n', '<leader>-', '<Plug>AirlineSelectPrevTab')
map('n', '<leader>+', '<Plug>AirlineSelectNextTab')
-- vim-easy-align
    -- Start interactive EasyAlign in visual mode (e.g. vipga)
map('x', 'al', '<Plug>(EasyAlign)')
    -- Start interactive EasyAlign for a motion/text object (e.g. gaip)
map('n', 'al', '<Plug>(EasyAlign)')

-- " coc.nvim
-- inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
-- inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
map('i', '<cr>', 'pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>', {expr = true})

-- " Use tab for trigger completion with characters ahead and navigate.
-- " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- " other plugin before putting this into your config.
map('i', '<S-TAB>', 'pumvisible() ? "\\<C-p>" : "\\<C-h>"', {expr = true})

-- " Use <c-space> to trigger completion.
-- inoremap <silent><expr> <c-space> coc#refresh()
map('i', '<c-space', 'coc#refresh', {silent = true, expr = true})

-- " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
-- " position. Coc only does snippet and additional edit on confirm.
if vim.fn.has('patch8.1.1068') then
--   " Use `complete_info` if your (Neo)Vim version supports it.
--   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
  map('i', '<cr>', 'complete_info()["selected"] != "-1" ? "\\<C-y>" : "\\<C-g>u\\<CR>"', {expr = true})
else
--   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
  map('i', '<cr>', 'pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>"', {expr = true})
end

-- " scroll in float window
if vim.fn.has('nvim-0.4.0') or vim.fn.has('patch-8.2.0750') then
--   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
--   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  map('n', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "\\<C-f>"', {silent = true, nowait = true, expr = true})
  map('n', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "\\<C-b>"', {silent = true, nowait = true, expr = true})
--   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
--   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  map('i', '<C-f>', 'coc#float#has_scroll() ? "\\<c-r>=coc#float#scroll(1)\\<cr>" : "\\<Right>"', {silent = true, nowait = true, expr = true})
  map('i', '<C-b>', 'coc#float#has_scroll() ? "\\<c-r>=coc#float#scroll(0)\\<cr>" : "\\<Left>"', {silent = true, nowait = true, expr = true})
--   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
--   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  map('v', '<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "\\<C-f>"', {silent = true, nowait = true, expr = true})
  map('v', '<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "\\<C-b>"', {silent = true, nowait = true, expr = true})
end


-- " Use `[g` and `]g` to navigate diagnostics
-- nmap <silent> [g <Plug>(coc-diagnostic-prev)
-- nmap <silent> ]g <Plug>(coc-diagnostic-next)
map('n', '[g', '<Plug>(coc-diagnostic-prev)', {silent = true})
map('n', ']g', '<Plug>(coc-diagnostic-next)', {silent = true})

-- " GoTo code navigation.
-- nmap <silent> gd <Plug>(coc-definition)
-- nmap <silent> gy <Plug>(coc-type-definition)
-- nmap <silent> gi <Plug>(coc-implementation)
-- nmap <silent> gr <Plug>(coc-references)
map('n', 'gd', '<Plug>(coc-definition)', {silent = true})
map('n', 'gy', '<Plug>(coc-type-definition)', {silent = true})
map('n', 'gi', '<Plug>(coc-implementation)', {silent = true})
map('n', 'gr', '<Plug>(coc-references)', {silent = true})

-- " Symbol renaming.
-- nmap <leader>rn <Plug>(coc-rename)
-- " Code refactor
-- nmap <leader>rf <Plug>(coc-refactor)
map('n', '<leader>rn', '<Plug>(coc-rename)')
map('n', '<leader>rf', '<Plug>(coc-refactor)')


-- " Formatting selected code.
-- xmap <leader>f  <Plug>(coc-format-selected)
-- nmap <leader>f  <Plug>(coc-format-selected)
map('x', '<leader>f', '<Plug>(coc-format-selected)')
map('n', '<leader>f', '<Plug>(coc-format-selected)')

-- " Applying codeAction to the selected region.
-- " Example: `<leader>aap` for current paragraph
-- xmap <leader>a  <Plug>(coc-codeaction-selected)
-- nmap <leader>a  <Plug>(coc-codeaction-selected)
map('x', '<leader>a', '<Plug>(coc-codeaction-selected)')
map('n', '<leader>a', '<Plug>(coc-codeaction-selected)')

-- " Remap keys for applying codeAction to the current line.
-- nmap <leader>ac  <Plug>(coc-codeaction)
-- " Apply AutoFix to problem on the current line.
-- nmap <leader>qf  <Plug>(coc-fix-current)
map('n', '<leader>ac', '<Plug>(coc-codeaction)')
map('n', '<leader>qf', '<Plug>(coc-fix-current)')

-- " Introduce function text object
-- " NOTE: Requires 'textDocument.documentSymbol' support from the language server.
-- xmap if <Plug>(coc-funcobj-i)
-- xmap af <Plug>(coc-funcobj-a)
-- omap if <Plug>(coc-funcobj-i)
-- omap af <Plug>(coc-funcobj-a)
xmap('if', '<Plug>(coc-funcobj-i)')
xmap('af', '<Plug>(coc-funcobj-a)')
omap('if', '<Plug>(coc-funcobj-i)')
omap('af', '<Plug>(coc-funcobj-a)')

-- " Use <TAB> for selections ranges.
-- " NOTE: Requires 'textDocument/selectionRange' support from the language server.
-- " coc-tsserver, coc-python are the examples of servers that support it.
-- nmap <silent> <TAB> <Plug>(coc-range-select)
-- xmap <silent> <TAB> <Plug>(coc-range-select)
-- map <silent> <TAB> <Plug>(coc-range-select)
-- map <silent> <TAB> <Plug>(coc-range-select)
nmap('<TAB>', '<Plug>(coc-range-select)', {silent = true})
xmap('<TAB>', '<Plug>(coc-range-select)', {silent = true})
map('', '<TAB>', '<Plug>(coc-range-select)', {silent = true})

-- " Mappings using CoCList:
nmap('<space><space>', ':<C-u>CocFzfList<CR>')
nmap('<space>a', ':<C-u>CocFzfList diagnostics<CR>)')
nmap('<space>b', ':<C-u>CocFzfList buffers<CR>')
nmap('<space>c', ':<C-u>CocFzfList commands<CR>')
nmap('<space>e', ':<C-u>CocFzfList mru<CR>')
nmap('<space>l', ':<C-u>CocFzfList location<CR>')
nmap('<space>o', ':<C-u>CocFzfList outline<CR>')
nmap('<space>s', ':<C-u>CocFzfList symbols<CR>')
nmap('<space>p', ':<C-u>CocFzfListResume<CR>')

nmap('<C-p>', ':<C-u>Files<CR>')
nmap('<leader>b', ':<C-u>Buffers<CR>')
nmap('<leader>ag', ':<C-u>Ag<CR>')
nmap('<leader>rg', ':<C-u>Rg<CR>')
-- " nnoremap <leader>at :<C-u>Tags<CR>
-- " nnoremap <leader>t :<C-u>BTags<CR>

-- " plugin incsearch 
vim.g['incsearch#auto_nohlsearch'] = 1
map('', '/', '<Plug>(incsearch-forward)')
map('', '?', '<Plug>(incsearch-backward)')
map('', 'g/', '<Plug>(incsearch-stay)')
map('', 'n', '<Plug>(incsearch-nohl-n)')
map('', 'N', '<Plug>(incsearch-nohl-N)')
map('', '*', '<Plug>(incsearch-nohl-*)')
map('', '#', 'Plug>(incsearch-nohl-#)')
map('', 'g*', '<Plug>(incsearch-nohl-g*)')
map('', 'g#', '<Plug>(incsearch-nohl-g#)')

-- " plugin coc-prettier
-- command! -nargs=0 Prettier :CocCommand prettier.formatFile
vim.api.nvim_create_user_command(
    'Prettier',
    'CocCommand prettier.formatFile',
    {nargs = 0, bang = true}
)
vmap('<leader>fmt', '<Plug>(coc-format-selected)')
nmap('<leader>fmt', '<Plug>(coc-format-selected)')

-- nvim-tree
nmap('<leader>t', [[:NvimTreeFocus<cr>]], {})
