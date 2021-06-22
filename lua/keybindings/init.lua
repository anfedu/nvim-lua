local keymap = vim.api.nvim_set_keymap

local set_keybindings = function()
    local noremap_silent = { noremap = true, silent = true }
    local noremap_nosilent = { noremap = true, silent = false }
    local remap_silent = { noremap = false, silent = true }
    local remap_nosilent = { noremap = false, silent = true }

    local keybindings = {
        -- Buffers
        { "n", "<C-t>", "<CMD>tabnew<CR>", noremap_silent },
        { "n", "<C-Up>", "<CMD>BufferNext<CR>", noremap_silent },
        { "n", "<C-Down>", "<CMD>BufferPrevious<CR>", noremap_silent },
        { "n", "<A-1>", "<CMD>BufferGoto 1<CR>", noremap_silent },
        { "n", "<A-2>", "<CMD>BufferGoto 2<CR>", noremap_silent },
        { "n", "<A-3>", "<CMD>BufferGoto 3<CR>", noremap_silent },
        { "n", "<A-4>", "<CMD>BufferGoto 4<CR>", noremap_silent },
        { "n", "<A-5>", "<CMD>BufferGoto 5<CR>", noremap_silent },
        { "n", "<A-6>", "<CMD>BufferGoto 6<CR>", noremap_silent },
        { "n", "<A-7>", "<CMD>BufferGoto 7<CR>", noremap_silent },
        { "n", "<A-8>", "<CMD>BufferGoto 8<CR>", noremap_silent },
        { "n", "<A-9>", "<CMD>BufferGoto 9<CR>", noremap_silent },
        { "n", "<A-0>", "<CMD>BufferLast<CR>", noremap_silent },

        -- telescope
        {
            "n",
            "<Leader><space>",
            '<CMD>lua require("telescope.builtin").oldfiles({file_ignore_patterns = {"/usr/share/nvim/runtime/*"}})<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>b",
            '<CMD>lua require("telescope.builtin").buffers()<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>o",
            '<CMD>lua require("telescope.builtin").find_files()<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>m",
            '<cmd>lua require("telescope.builtin").marks()<cr>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader><Leader>",
            '<CMD>lua require("telescope.builtin").builtin({previewer = false})<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>k",
            '<CMD>lua require("telescope.builtin").keymaps()<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>/",
            '<CMD>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>',
            noremap_nosilent,
        },
        {
            "n",
            "<Leader>?",
            '<CMD>lua require("telescope.builtin").grep_string()<CR>',
            noremap_nosilent,
        },

        -- emmet-vim
        { "i", "<A-Tab>", "<C-y>,", remap_silent },
        { "v", "<A-Tab>", "<C-y>,", remap_silent },

        -- moving selection text
        { "n", "<A-down>", "<CMD>m .+1<CR>==<CR>", noremap_silent },
        { "n", "<A-up>", "<CMD>m .-2<CR>==<CR>", noremap_silent },
        { "i", "<A-down>", "<Esc><CMD>m .+1<CR>==gi<CR>", noremap_silent },
        { "i", "<A-up>", "<Esc><CMD>m .-2<CR>==gi<CR>", noremap_silent },
        { "v", "<A-down>", "<CMD>m '>+1<CR>gv=gv<CR>", noremap_silent },
        { "v", "<A-up>", "<CMD>m '<-2<CR>gv=gv<CR>", noremap_silent },

        -- custom save file
        { "n", "<C-S>", "<CMD>update!<CR>", noremap_silent },
        { "n", "<M-q>", "<CMD>:q!<CR>", noremap_silent },

        -- colorizer
        { "n", "<A-c>", "<CMD>ColorizerToggle<CR>", noremap_silent },

        -- Search for visually selected text
        {
            "v",
            "<Leader>v",
            "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>",
            remap_nosilent,
        },

        -- nvim tree.lua
        { "n", "<Leader>e", '<CMD>lua require("utils.nvimtree").toggle()<CR>', remap_nosilent },

        -- rest.nvim
        { "n", "<Leader>0", '<CMD>lua require("rest-nvim").run()<CR>', remap_nosilent },

        -- code formater
        { "n", "<leader>f", "<CMD>FormatWrite<CR>", noremap_silent },
    }

    for _, key in pairs(keybindings) do
        keymap(key[1], key[2], key[3], key[4])
    end
end

-- vim.cmd('let mapleader=","')
set_keybindings()

vim.api.nvim_exec(
    [[
    augroup Format
      autocmd filetype python nnoremap <F4> :w <bar> exec '!python3 '.shellescape('%')<CR>
      autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r')<CR>
      autocmd filetype cpp nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r')<CR>
      autocmd filetype javascript nnoremap <F4> :w <bar> exec '!node '.shellescape('%')<CR>
      autocmd filetype go nnoremap <F4> :w <bar> exec '!go run '.shellescape('%')<CR>
    augroup END
]],
    true
)
