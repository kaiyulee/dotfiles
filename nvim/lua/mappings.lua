-- Keybindings

-- map helper
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local function xmap(lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('x', lhs, rhs, options)
end
local function nmap(lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('n', lhs, rhs, options)
end
local function vmap(lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('v', lhs, rhs, options)
end
local function imap(lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('i', lhs, rhs, options)
end
local function omap(lhs, rhs, opts)
    local options = { noremap = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap('o', lhs, rhs, options)
end

-- vim-which-key
map('n', '<Leader> ', ':WhichKey <Space>');

-- bufferline settings
-- https://github.com/akinsho/bufferline.nvim
map('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>')
map('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>')
map('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>')
map('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>')
map('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>')
map('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>')
map('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>')
map('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>')
map('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>')
map('n', '<leader>-', '<Cmd>BufferLineCycleNext<CR>')
map('n', '<leader>+', '<Cmd>BufferLineCyclePrev<CR>')
nmap('<F1>', ':BufferLineCyclePrev<CR>', { silent = true }) -- buffer prev
nmap('<F2>', ':BufferLineCycleNext<CR>', { silent = true }) -- buffer next
nmap('<leader>d', ':bd<cr>', { silent = true })           -- delete buffer
-- nmap('<c-[>', ':BufferLineCyclePrev<CR>', {silent = true}) -- buffer prev
-- nmap('<c-]>', ':BufferLineCycleNext<CR>', {silent = true}) -- buffer next

-- vim-easy-align
-- Start interactive EasyAlign in visual mode (e.g. vipga)
map('x', 'al', '<Plug>(EasyAlign)')
-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
map('n', 'al', '<Plug>(EasyAlign)')


-- nvim-tree
nmap('<leader>tg', [[:NvimTreeToggle<cr>]], {})
nmap('<leader>tf', [[:NvimTreeFocus<cr>]], {})
nmap('<leader>tr', [[:NvimTreeFindFile<cr>]], {})

nmap('<leader>o', [[:SymbolsOutline<cr>]])
vim.keymap.set({ 'n', 'v' }, '<space>ca', [[:CodeActionMenu<cr>]], {})


-- FZF --
local fzf = require('fzf-lua')
vim.keymap.set("n", "<c-P>",fzf.files, { silent = true })
vim.keymap.set('n', '<leader>fg', fzf.live_grep, {})
vim.keymap.set('n', '<leader>fb', fzf.buffers, {})
vim.keymap.set('n', '<leader>fh', fzf.help_tags, {})
vim.keymap.set('n', '<leader>sw', fzf.grep_cword, {})
vim.keymap.set('n', '<leader>gb', fzf.git_branches, {})
vim.keymap.set('n', '<leader>gs', fzf.git_status, {})
vim.keymap.set('n', '<leader>gt', fzf.git_stash, {})
-- lsp
vim.keymap.set('n', '<leader>ca', fzf.lsp_code_actions, {})
vim.keymap.set('n', '<leader>ic', fzf.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>oc', fzf.lsp_outgoing_calls, {})
vim.keymap.set('n', '<leader>ff', fzf.lsp_finder, {})
vim.keymap.set('n', 'gr', fzf.lsp_references, {})
vim.keymap.set('n', 'gD', fzf.lsp_declarations, {})
vim.keymap.set('n', 'gd', fzf.lsp_definitions, {})
vim.keymap.set('n', 'gi', fzf.lsp_implementations, {})
vim.keymap.set('n', '<space>D', fzf.lsp_typedefs, {})
vim.keymap.set('n', '<space>o', fzf.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>O', fzf.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>qf', fzf.quickfix_stack, {})


-- TODO-COMMENTS --
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })


-- lspconfig --
-- lsp global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    end,

})

