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
    use({ "windwp/nvim-autopairs" })

    use({ "machakann/vim-sandwich" })

    -- syntax
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        requires = {
            "p00f/nvim-ts-rainbow",
            "windwp/nvim-ts-autotag",
        },
    })

    -- Indentline
    use({
        "lukas-reineke/indent-blankline.nvim",
        branch = "lua",
    })

    -- Commentary
    use({ "terrortylor/nvim-comment" })

    -- Explorer
    use({
        "kyazdani42/nvim-tree.lua",
        requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- multiple cursor
    use("terryma/vim-multiple-cursors")

    -- emmet
    use("mattn/emmet-vim")

    -- statusline
    use({
        "glepnir/galaxyline.nvim",
        branch = "main", -- your statusline
        requires = { "kyazdani42/nvim-web-devicons" },
    })

    use({
        "romgrk/barbar.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- colorshcme
    use("glepnir/zephyr-nvim")
    use("norcalli/nvim-colorizer.lua")

    -- nvim-lsp
    use({
        "neovim/nvim-lspconfig",
        requires = {
            "glepnir/lspsaga.nvim",
            "stevearc/aerial.nvim",
        },
    })

    use({
        "hrsh7th/nvim-compe",
        requires = { "hrsh7th/vim-vsnip" },
    })
    use({ "code-biscuits/nvim-biscuits" })
    use({
        "folke/lsp-trouble.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
    })

    -- code formatter
    use({ "lukas-reineke/format.nvim" })

    -- fuzzy finder
    use({
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzy-native.nvim",
        },
    })

    -- git
    use({
        "mattn/gist-vim",
        requires = { "mattn/webapi-vim" },
        opt = true,
    })
    use({
        "lewis6991/gitsigns.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    })
    use({ "TimUntersberger/neogit" })

    -- smooth scroll
    use({ "karb94/neoscroll.nvim" })

    -- rest.nvim
    use({
        "NTBBloodbath/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        ft = "http",
    })
end)

return packer
