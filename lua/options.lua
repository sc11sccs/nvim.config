local config = {
  tab_size = 2,
}

local options = {
  keymap = 'russian-jcukenwin',
  langmap = 'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz',
  iminsert = 0,

  expandtab = true,
  shiftwidth = config.tab_size,
  softtabstop = 2,
  tabstop = config.tab_size,
  smartindent = true,

  completeopt = { 'menuone', 'noselect' },
  pumheight = 10,

  ignorecase = true,
  smartcase = true,

  timeoutlen = 2000,
  updatetime = 300,

  undofile = true,

  mouse = 'a',
  showtabline = 2,
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  cursorline = true,
  number = true,
  relativenumber = true,
  signcolumn = 'yes',
  wrap = false,
  scrolloff = 8,

  fileformat = 'unix',
  fileformats = 'unix,dos'
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

vim.cmd 'set iminsert=0'

