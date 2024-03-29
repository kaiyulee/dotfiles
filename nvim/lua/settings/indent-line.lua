-- https://github.com/lukas-reineke/indent-blankline.nvim
vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    --space_char_blankline = " ",
    --show_current_context = true,
    --show_current_context_start = true,
    --show_end_of_line = true,
}


vim.cmd[[
let g:indent_blankline_filetype_exclude += ["startify"]
]]
