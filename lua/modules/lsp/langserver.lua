local lspconfig = require("lspconfig")
local c = require("modules.lsp.custom")

lspconfig.tsserver.setup(c.default({
    root_dir = vim.loop.cwd,
    settings = {
        tsserver = {
            useBatchedBufferSync = true,
        },
        javascript = {
            autoClosingTags = true,
            suggest = {
                autoImports = true,
            },
            updateImportsOnFileMove = {
                enable = true,
            },
        },
    },
}))

lspconfig.sumneko_lua.setup(c.default({
    cmd = { "lua-language-server", string.format("--logpath=%s/.cache/nvim/sumneko_lua", vim.loop.os_homedir()) },
    root_dir = vim.loop.cwd,
    settings = {
        Lua = {
            runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
            telemetry = {
                enable = false,
            },
            diagnostics = {
                enable = true,
                globals = { "vim", "awesome", "use", "client", "root", "s", "screen" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                    ["/usr/share/awesome/lib"] = true,
                    ["/usr/share/lua/5.1"] = true,
                    ["/usr/share/lua/5.3"] = true,
                    ["/usr/share/lua/5.4"] = true,
                },
            },
        },
    },
}))

lspconfig.cssls.setup(c.default({
    root_dir = vim.loop.cwd,
}))

local servers = { "jsonls", "vimls" }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(c.default())
end
