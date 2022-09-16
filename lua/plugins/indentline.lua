vim.opt.termguicolors = true
-- <-- coloring space -->
-- vim.cmd [[highlight IndentBlanklineIndent1 guibg=#2a2a2a gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guibg=#2e2e2e gui=nocombine]]
-- <-- coloring space -->

-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

require("indent_blankline").setup {
	  -- <-- coloring space -->
    -- char = "",
    -- char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    -- },
    -- space_char_highlight_list = {
    --     "IndentBlanklineIndent1",
    --     "IndentBlanklineIndent2",
    -- },
    -- show_trailing_blankline_indent = false,
	  -- <-- coloring space -->

	  -- <-- indent line -->
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
	  -- char_highlight_list = {
	  --         "IndentBlanklineIndent1",
	  --         "IndentBlanklineIndent2",
	  --         "IndentBlanklineIndent3",
	  --         "IndentBlanklineIndent4",
	  --         "IndentBlanklineIndent5",
	  --         "IndentBlanklineIndent6",
	  --     },
	  -- <-- indent line -->
}
