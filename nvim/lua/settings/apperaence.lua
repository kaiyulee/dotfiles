-- neoscroll
require('neoscroll').setup({
    -- All these keys will be mapped to their corresponding default scrolling animation
    mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    hide_cursor = true, -- Hide cursor while scrolling
    stop_eof = true, -- Stop at <EOF> when scrolling downwards
    use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
    respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    easing_function = nil, -- Default easing function
    pre_hook = nil, -- Function to run before the scrolling animation starts
    post_hook = nil -- Function to run after the scrolling animation ends
})


require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- vim.g.gruvbox_termcolors = 256
-- vim.g.gruvbox_sign_column = 'bg0' -- will set your signcolumn the same color as your background
-- vim.g.gruvbox_contrast_dark = 'soft'
-- vim.g.gruvbox_contrast_light = 'soft'
-- vim.g.gruvbox_invert_signs = 1
-- -- auto_dark_mode
-- local auto_dark_mode = require('auto-dark-mode')
-- auto_dark_mode.setup({
--     update_interval = 3000,
--     set_dark_mode = function()
--         vim.api.nvim_set_option('background', 'dark')
--         vim.cmd('colorscheme gruvbox')
--         require('settings.lualine').set_theme('gruvbox_dark');
--     end,
--     set_light_mode = function()
--         vim.api.nvim_set_option('background', 'light')
--         vim.cmd('colorscheme gruvbox')
--         require('settings.lualine').set_theme('gruvbox_light')
--     end
-- })
-- auto_dark_mode.init()

--

-- blamer
vim.g['blamer_enabled'] = 1
vim.g['blamer_delay'] = 200
vim.g['blamer_show_in_visual_modes'] = 0
vim.g['blamer_prefix'] = '  '
vim.g['blamer_relative_time'] = 1

-- fzf-preview
vim.g['fzf_preview_use_dev_icons'] = 1
