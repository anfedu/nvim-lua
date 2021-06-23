-- neovim basic configuration
require("settings")

-- install packer
require("modules.packer.bootstrapping")

-- neovim package manager
require("modules.packer")

-- neovim lsp client
-- require("modules.lsp")

-- neovim statusline
require("modules.statusline")

-- neovim plugins configuration
require("plugins")

-- neovim keybindings
require("keybindings")
