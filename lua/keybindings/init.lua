local keymap = vim.api.nvim_set_keymap

local set_keybindings = function()
  local keybindings = {
    -- Buffers
    {'n', '<C-t>', ':tabnew<CR>', {noremap = true, silent = true}},
    {'n', '<C-PageUp>', ':bp<CR>', {noremap = true, silent = true}},
    {'n', '<C-PageDown>', ':bn<CR>', {noremap = true, silent = true}},

    -- terminal mode
    {'t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true}},

    -- nvim tree.lua
    {
      'n',
      '<Leader>e',
      '<CMD>NvimTreeToggle<CR>',
      {noremap = true, silent = false}
    },
    {
      'n',
      '<A-f>',
      '<CMD>NvimTreeFindFile<CR>',
      {noremap = true, silent = false}
    },

    -- move line
    {'n', '<A-down>', ':m .+1<CR>==', {noremap = true, silent = true}},
    {'n', '<A-up>', ':m .-2<CR>==', {noremap = true, silent = true}},

    -- custom save file
    {'n', '<C-S>', ':update!<CR>', {noremap = true, silent = true}},
    {'n', '<M-q>', '<CMD>:q!<CR>', {noremap = true, silent = true}},

    -- colorizer
    {'n', '<A-c>', ':ColorizerToggle<CR>', {noremap = true, silent = true}},

    -- git
    -- {'n', '<Leader>ga', '<CMD>Gwrite<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gc', '<CMD>Gcommit<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gsh', '<CMD>Gpush<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gll', '<CMD>Gpull<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gs', '<CMD>Gstatus<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gb', '<CMD>Gblame<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gd', '<CMD>Gvdiff<CR>', {noremap = true, silent = false}},
    -- {'n', '<Leader>gr', '<CMD>Gremove<CR>', {noremap = true, silent = false}},

    -- Search for visually selected text
    {
      'v',
      '<Leader>v',
      'y/\\V<C-R>=escape(@",\'/\\\')<CR><CR>',
      {noremap = false, silent = false}
    }

  }

  for _, key in pairs(keybindings
                ) do
    keymap(key[1], key[2], key[3], key[4]
    )
  end
end
-- vim.cmd('')
set_keybindings()

vim.api.nvim_exec([[
augroup Format
  autocmd filetype javascript nnoremap <F4> :w <bar> exec '!node '.shellescape('%')<CR>
  autocmd filetype go nnoremap <F4> :w <bar> exec '!go run '.shellescape('%')<CR>
augroup END
]], true
)
