local lspconfig = require 'lspconfig'

local on_attach = function(client, bufnr)
    require'completion'.on_attach(client)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
end

return {
    on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
}
