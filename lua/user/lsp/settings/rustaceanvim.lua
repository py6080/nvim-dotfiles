local lspconfig = require('user.lsp.handlers');

local on_attach = function(client, bufnr)
    lspconfig.on_attach(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
end


vim.g.rustaceanvim = {
  -- Plugin configuration
  tools = {
    enable_clippy = true,
  },
  -- LSP configuration
  server = {
    on_attach = on_attach,
    capabilities = lspconfig.capabilities,
    default_settings = {
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
  }, 
}
