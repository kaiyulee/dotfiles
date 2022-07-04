require("nvim-tree").setup({
  sort_by = "case_sensitive",
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
})
