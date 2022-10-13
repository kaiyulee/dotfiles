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

-- auto_dark_mode
vim.g.gruvbox_termcolors = 256
local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
    update_interval = 3000,
    set_dark_mode = function()
        vim.api.nvim_set_option('background', 'dark')
        vim.cmd('colorscheme gruvbox')
        vim.cmd[[highlight CocMenuSel cterm=bold gui=bold ctermbg=NONE guibg=#282828]]
        require('settings.lualine').set_theme('gruvbox_dark');
    end,
    set_light_mode = function()
        vim.api.nvim_set_option('background', 'light')
        vim.cmd('colorscheme gruvbox')
        vim.cmd[[highlight CocMenuSel cterm=bold gui=bold ctermbg=NONE guibg=#FCF3D0]]
        require('settings.lualine').set_theme('gruvbox_light')
    end
})
auto_dark_mode.init()

--

-- blamer
vim.g['blamer_enabled'] = 1
vim.g['blamer_delay'] = 200
vim.g['blamer_show_in_visual_modes'] = 0
vim.g['blamer_prefix'] = '  '
vim.g['blamer_relative_time'] = 1

-- fzf-preview
vim.g['fzf_preview_use_dev_icons'] = 1