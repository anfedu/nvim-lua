require "format".setup {
    ["*"] = {
        {cmd = {"sed -i 's/[ \t]*$//'"}} -- remove trailing whitespace
    },
    vim = {
        {
            cmd = {"luafmt -w replace"},
            start_pattern = "^lua << EOF$",
            end_pattern = "^EOF$"
        }
    },
lua = {
      {
 cmd = {
            function(file)
                return string.format("lua-format -c % -i", os.getenv("HOME") .. "/.config/nvim/luaformatter.yaml", file)
            end
        },
        tempfile_dir = '/tmp'
      }
  },
    go = {
        {
            cmd = {"gofmt -w", "goimports -w"},
            tempfile_postfix = ".tmp"
        }
    },
    vimwiki = {
        {
            cmd = {"prettier -w --parser babel"},
            start_pattern = "^{{{javascript$",
            end_pattern = "^}}}$"
        }
    },
    json = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    javascript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescript = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    javascriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    typescriptreact = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    graphql = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    yaml = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    },
    markdown = {
        {cmd = {"prettier -w", "./node_modules/.bin/eslint --fix"}}
    }
}

vim.api.nvim_exec([[
augroup Format
    autocmd!
    autocmd BufWritePost * FormatWrite
augroup END
]], true)
