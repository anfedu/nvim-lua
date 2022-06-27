require("nvim-treesitter.configs").setup({
    -- ensure_installed = "maintained",
    highlight = {
        enable = true,
        use_languagetree = true,
    },
    indent = {
        enable = false,
    },
    rainbow = {
        enable = false,
    },
    autopairs = {
        enable = true,
    },
    autotag = {
        enable = true,
        filetypes = { "html", "xml" },
    },
})
