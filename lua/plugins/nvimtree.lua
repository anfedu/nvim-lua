vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 35
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
vim.g.nvim_tree_auto_open = 0
vim.g.nvim_tree_auto_close = 0
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ':~'
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_show_icons = {git = 0, folders = 1, files = 1}

vim.g.nvim_tree_bindings = {
  edit = {'<CR>', 'o'},
  edit_vsplit = '<C-v>',
  edit_split = '<C-x>',
  edit_tab = '<C-t>',
  toggle_ignored = 'I',
  toggle_dotfiles = 'H',
  refresh = 'R',
  preview = '<Tab>',
  cd = 'C',
  create = 'a',
  remove = 'd',
  rename = 'r',
  cut = 'x',
  copy = 'c',
  paste = 'p',
  prev_git_item = '[c',
  next_git_item = ']c'
}

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★"
  },
  folder = {default = " ", open = " "}
}

