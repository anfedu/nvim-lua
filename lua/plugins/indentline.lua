-- vim.opt.termguicolors = true
-- <-- coloring space -->
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#1f1f1f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#2a2a2a gui=nocombine]]
-- <-- coloring space -->

require("indent_blankline").setup {
	  -- <-- coloring space -->
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
	  -- <-- coloring space -->

	  -- <-- indent line -->
    -- space_char_blankline = " ",
    -- show_current_context = true,
    -- show_current_context_start = true,
	  -- <-- indent line -->
}
