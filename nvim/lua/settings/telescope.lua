local putils = require("telescope.previewers.utils")
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    preview = {
        filesize_limit = 1,
        filetype_hook = function (filepath, bufnr, opts)
            local excluded =vim.tbl_filter(function (ending)
                return filepath:match(ending)
            end, {
                ".*%.csv",
                ".*%.toml",
                ".*%.js",
            })
            if not vim.tbl_isempty(excluded) then
                putils.set_preview_message(bufnr, opts.winid, string.format("%s files preview disabled", excluded[1]:sub(5, -1)))
                return false
            end
            return true
        end,

        filesize_hook = function(filepath, bufnr, opts)
        local path = require("plenary.path"):new(filepath)
        -- opts exposes winid
        local height = vim.api.nvim_win_get_height(opts.winid)
        local lines = vim.split(path:head(height), "[\r]?\n")
        vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
        end,
    },
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
    frecency = {
        ignore_patterns = {"*.git/*", "*/tmp/*", "*.idea/*", "*.vscode/*"},
        disable_devicons = true,
        workspaces = {
        ["conf"]    = "/home/beke/.config",
        ["project"] = "/home/beke/Code/nrs-projects",
      }
    }
  }
}

require('telescope').load_extension('frecency')

require('telescope').load_extension('fzf')

require('telescope').load_extension('lsp_handlers')
