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

-- blamer
vim.g['blamer_enabled'] = 1
vim.g['blamer_delay'] = 200
vim.g['blamer_show_in_visual_modes'] = 0
vim.g['blamer_prefix'] = ' ❱❱❱ '
vim.g['blamer_relative_time'] = 1

-- airline
vim.g['airline_skip_empty_sections'] = 0
vim.g['airline#extensions#tabline#formatter'] = 'short_path'
vim.g['airline_powerline_fonts'] = 1
vim.g['airline#extensions#branch#enabled'] = 1
vim.g['airline_skip_empty_sections'] = 0

vim.g['airline#extensions#tabline#formatter'] = 'short_path'
vim.g['airline_powerline_fonts'] = 1
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#show_buffers'] = 1
vim.g['airline#extensions#tabline#show_tabs'] = 1
vim.g['airline#extensions#tabline#show_tab_count'] = 1
-- vim.g['airline#extensions#tabline#left_sep'] = ' '
-- vim.g['airline#extensions#tabline#left_alt_sep'] = '⎹⎸'
vim.g['airline#extensions#tabline#show_splits'] = 1
vim.g['airline#extensions#tabline#tab_nr_type'] = 1
vim.g['airline#extensions#tabline#show_tab_nr'] = 1
vim.g['airline#extensions#tabline#buffer_idx_mode'] = 1
vim.g['airline#extensions#tabline#switch_buffers_and_tabs'] = 1
vim.g['airline#extensions#tabline#buf_label_first'] = 1
vim.g['airline#extensions#hunks#enabled'] = 0
vim.g['airline#extensions#csv#enabled'] = 0
vim.g['airline#extensions#whitespace#enabled'] = 1
vim.g['airline#extensions#whitespace#checks'] = {'trailing', 'indent'}
vim.g['airline#extensions#branch#enabled'] = 1
vim.g['airline#extensions#battery#enabled'] = 1
-- vim.g['airline_section_c'] = airline#section#create_left(['%f', '%{strftime("%T")}'])

-- indentLine
--vim.g['indentLine_setColors'] = 0
vim.g['indentLine_color_term'] = 239
vim.g['indentLine_char'] = '│'
vim.g['indentLine_char_list'] = {'|', '¦', '┆', '┊'}
vim.g['indentLine_showFirstIndentLevel'] = 0
vim.g['indentLine_fileType'] = {'php', 'go', 'js', 'html', 'vue', 'json', 'yaml', 'java'}
vim.g['vim_json_syntax_conceal'] = 0
-- vim.g['indentLine_leadingSpaceChar'] = '˽'
vim.g['indentLine_leadingSpaceChar'] = ' '
vim.g['indentLine_leadingSpaceEnabled'] = 1
vim.g['WebDevIconsNerdTreeAfterGlyphPadding'] = ' '


vim.cmd[[
]]
