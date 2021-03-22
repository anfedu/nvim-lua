-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  if vim.fn.input("Hent packer.nvim? (y for yada)") ~= "y" then
    return
  end

  local directory = string.format('%s/site/pack/packer/opt/',
    vim.fn.stdpath('data'))

  vim.fn.mkdir(directory, 'p')

  local git_clone_cmd = vim.fn.system(string.format('git clone %s %s',
    'https://github.com/wbthomason/packer.nvim', directory .. '/packer.nvim'))

  print(git_clone_cmd)
  print("Henter packer.nvim...")

  return
end

return require('packer').startup(function()
  use {'wbthomason/packer.nvim', opt = true}

  -- Auto pairs
  use 'jiangmiao/auto-pairs'
  use 'tpope/vim-surround'
  -- use 'luochen1990/rainbow'

  -- syntax
  -- use 'sheerun/vim-polyglot'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Indentline
  use 'glepnir/indent-guides.nvim'

  -- Commentary
  -- use 'tomtom/tcomment_vim'
  -- use 'glepnir/prodoc.nvim'
  use 'b3nj5m1n/kommentary'

  -- Explorer
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- multiple cursor
  use 'terryma/vim-multiple-cursors'

  -- emmet
  use 'mattn/emmet-vim'

  -- statusline
  use {
    'glepnir/galaxyline.nvim',
    branch = 'main', -- your statusline
    config = function()
      require 'my_statusline'
    end, -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'romgrk/barbar.nvim'

  -- colorshcme
  use 'glepnir/zephyr-nvim'
  use {'dikiaap/minimalist', disable = true}
  use 'norcalli/nvim-colorizer.lua'

  -- nvim-lsp
  use 'neovim/nvim-lspconfig'
  use 'anott03/nvim-lspinstall'
  use {
    'nvim-telescope/telescope.nvim',
    requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}
  }
  use 'lukas-reineke/format.nvim'
  use {
    'hrsh7th/nvim-compe',
    requires = {'hrsh7th/vim-vsnip', 'hrsh7th/vim-vsnip-integ'}
  }
  use 'cohama/lexima.vim'

  -- coc nvim
  -- use {'neoclide/coc.nvim, branch: release'}
  -- use 'rafcamlet/coc-nvim-lua'

  -- Git

  -- use 'airblade/vim-gitgutter'
  -- use 'tpope/vim-fugitive'

end)
