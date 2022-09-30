require 'options'
require 'keymaps'
require 'plugins'
require 'treesitter'

vim.cmd 'colorscheme duskfox'

require('lualine').setup()
require('bufferline').setup()
require('nvim-tree').setup()

local enable_lsp = os.getenv('NVIM_ENABLE_LSP')
if (enable_lsp) then
  -- TODO: enable LSP
end

