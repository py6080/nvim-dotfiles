local status_ok, _  = pcall(require, "mason")
if not status_ok then
  return
end

require("mason-nvim-dap").setup()
require("user.dap.config.codelldb")
require("user.dap.dapui_conf")

