-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

--term guicolors
vim.opt.termguicolors = true

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.lsp"

if not vim.g.vscode then
  require "user.comment"
  require "user.telescope"
  require "user.treesitter"
  require "user.nvimtree"
  require "user.autopairs"
  require "user.gitsigns"
  require "user.bufferlinep"
  require "user.dap"
  require "user.lsp.settings.rustaceanvim"

  vim.cmd "colorscheme tokyonight-night"
end


