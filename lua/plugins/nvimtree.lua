require'nvim-tree'.setup {
	renderer={icons={show={file=false, folder=false, folder_arrow=false}}},
  disable_netrw       = true,
  hijack_netrw        = true,
  -- open_on_setup       = false,
  -- ignore_ft_on_setup  = {},
  -- auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  -- update_to_buf_dir   = {
  --   enable = true,
  --   auto_open = true,
  -- },
  diagnostics = {
    enable = false,
    -- icons = {
    --   hint = "",
    --   info = "",
    --   warning = "",
    --   error = "",
    -- }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    -- height = 30,
    -- hide_root_folder = false,
    side = 'left',
    -- auto_resize = false,
    -- mappings = {
    --   custom_only = false,
    --   list = {}
    -- },
    number = true,
    relativenumber = true,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}


