local treesitter_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not treesitter_ok then
  vim.notify('Treesitter is not found')
  return
end

treesitter.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  autopairs = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
}

