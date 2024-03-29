local M = {};

local config = {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = {
            -- left = '',
            -- right = ''
            left = '',
            right = ''
        },
        section_separators = {
            -- left = '',
            -- right = ''
            left = '',
            right = ''
        },
        disabled_filetypes = {
            statusline = {'packer', 'NvimTree'},
            winbar = {}
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch', 
            'diff', 
            {
                'diagnostics', 
                sources = {'nvim_diagnostic'}, 
                sections = { 'error', 'warn', 'info', 'hint' }, 
                diagnostics_color = {
                    error = 'DiagnosticError', -- Changes diagnostics' error color.
                    warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
                    info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
                    hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
                },
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
                colored = false,           -- Displays diagnostics status in color if set to true.
                update_in_insert = false, -- Update diagnostics in insert mode.
                always_visible = false,   -- Show diagnostics even if there are none.
            }
        },
        lualine_c = {
            {
                'filename',
                path = 1,
                file_status = true,
                symbols = {
                    modified = ' ',
                    readonly = ' ',
                    unnamed = '  NoNameFile ',
                    newfile = ' ﱐ NewFile ',
                }
            }
        },
        lualine_x = {'encoding', 'fileformat', {'filetype', colored = true, icon_only = true}},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}

}

local function set_theme(theme)
    if type(theme) == 'string' then
        config.options.theme = theme
    end
    require('lualine').setup(config)
end

M = {
    set_theme = set_theme
}



return M
