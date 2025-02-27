vim.cmd("packadd packer.nvim")

local packer = require("packer")

packer.init({
    display = {
        open_cmd = "leftabove 80vnew [packer]",
    },
    profile = {
        enable = true,
        threshold = 1,
    },
})

packer.startup(function()
    use({ "wbthomason/packer.nvim", opt = true })

    -- Auto pairs
		use {
			"windwp/nvim-autopairs",
				config = function() require("nvim-autopairs").setup {} end
		}

    -- syntax
		use({
				"kylechui/nvim-surround",
				tag = "*", -- Use for stability; omit to use `main` branch for the latest features
				config = function()
						require("nvim-surround").setup({
								-- Configuration here, or leave empty to use defaults
						})
				end
		})
   -- use ({
   --      'nvim-treesitter/nvim-treesitter',
   --      run = ':TSUpdate'
   --  })
    use({ 'sheerun/vim-polyglot' })
    use({ 'folke/tokyonight.nvim' })

		-- completion
    use({ "neoclide/coc.nvim",
        branch = "release", 
        })

    -- Commentary
    use({ "terrortylor/nvim-comment" })

    -- Explorer
    use({
        "kyazdani42/nvim-tree.lua",
    })

    -- multiple cursor
    use("terryma/vim-multiple-cursors")

    -- emmet
    use("mattn/emmet-vim")

    -- statusline
    use({
        "glepnir/galaxyline.nvim",
        branch = "main", 
    })

    use({
        "romgrk/barbar.nvim"
    })

    -- colorshcme
    use("glepnir/zephyr-nvim")
    use("norcalli/nvim-colorizer.lua")

		-- search 
		use {
			'nvim-telescope/telescope.nvim',
			requires = {{'nvim-lua/plenary.nvim'}}
		}

    use {'dsznajder/vscode-es7-javascript-react-snippets',
        run = 'yarn install --frozen-lockfile && yarn compile'
    }

end)

return packer
