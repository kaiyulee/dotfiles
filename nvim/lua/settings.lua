--neoscroll
require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
                '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil,        -- Default easing function
    pre_hook = nil,              -- Function to run before the scrolling animation starts
    post_hook = nil,              -- Function to run after the scrolling animation ends
})

--nvim-tree
require("nvim-tree").setup({
  sort_by = "name",
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    highlight_opened_files = "all",
    indent_markers = {
        enable = true,
    }
  },
  filters = {
    dotfiles = false,
  },
  disable_netrw = true,
  open_on_setup = true,
  open_on_tab = true
})

--auto_dark_mode
local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
	update_interval = 1000,
	set_dark_mode = function()
		vim.api.nvim_set_option('background', 'dark')
		vim.cmd('colorscheme everforest')
        vim.g['airline_theme'] = 'everforest'
	end,
	set_light_mode = function()
		vim.api.nvim_set_option('background', 'light')
		vim.cmd('colorscheme hatsunemiku_light')
        vim.g['airline_theme'] = 'hatsunemiku_light'
        --vim.g['gruvbox_number_column'] = 'bg1'
        --vim.g['gruvbox_bold'] = 1
        --vim.g['gruvbox_italic'] = 1
        --vim.g['gruvbox_underline'] = 1
        --vim.g['gruvbox_termcolors'] = 256
        --vim.g['gruvbox_contrast_light'] = "hard"
        --vim.g['gruvbox_italicize_comments'] = 1
	end,
})
auto_dark_mode.init()

--
