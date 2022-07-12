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
