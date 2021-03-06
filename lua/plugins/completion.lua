local keymap = vim.api.nvim_set_keymap

require('compe').setup({
  enabled = true,
  debug = false,
  min_length = 1,
  auto_preselect = false,
  throttle_time = 100,
  source_timeout = 200,
  incomplete_delay = 400,
  allow_prefix_unmatch = false,

  source = {path = true, buffer = true, vsnip = true, nvim_lsp = true}
})

function Check_backspace()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

keymap('i', '<Tab>',
  'pumvisible() ? "<C-n>" : v:lua.Check_backspace() ? "<Tab>" : compe#confirm(lexima#expand("<c-l>", "i"))',
  {silent = true, noremap = true, expr = true})

keymap('i', '<C-space>', '<C-r>=compe#complete()<CR>',
  {noremap = false, silent = true})
