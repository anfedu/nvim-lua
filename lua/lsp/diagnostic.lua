vim.fn.sign_define("LspDiagnosticsSignError", {text = "", texthl = "LspDiagnosticsDefaultError", linehl = "NONE"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", texthl = "LspDiagnosticsDefaultWarning", linehl = "NONE"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                   {text = "", texthl = "LspDiagnosticsDefaultInformation", linehl = "NONE"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", texthl = "LspDiagnosticsDefaultHint", linehl = "NONE"})
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--     signs = false,
--     virtual_text = {spacing = 5, prefix = ''},
--     underline = false,
--     update_in_insert = false
-- })
