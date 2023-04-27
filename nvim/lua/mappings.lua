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

nmap('<space>o', [[:SymbolsOutline<cr>]])


-- Telescope --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gt', builtin.git_stash, {})
vim.keymap.set('n', '<leader>fi', builtin.builtin, {})
vim.keymap.set('n', '<leader>c', builtin.commands, {})
vim.keymap.set('n', '<leader>r', builtin.resume, {})

-- Telescope frecency --
nmap("<leader>e", ":lua require'telescope'.extensions.frecency.frecency({ workspace = 'CWD' })<CR>",
{ noremap = true, silent = true })


-- todo-comments --
vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

-- You can also specify a list of valid jump keywords

-- vim.keymap.set("n", "]t", function()
--   require("todo-comments").jump_next({keywords = { "ERROR", "WARNING" }})
-- end, { desc = "Next error/warning todo comment" })

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
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', [[:CodeActionMenu<cr>]], opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
        vim.keymap.set('n', '<leader>o', vim.lsp.buf.document_symbol, opts)
        vim.keymap.set('n', '<leader>O', vim.lsp.buf.workspace_symbol, opts)
    end,
})

