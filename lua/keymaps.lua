local keymap = vim.api.nvim_set_keymap

local key_remap_options = {
  noremap = true,
  silent = true,
}

-- Leader key
keymap('', '<Space>', '<Nop>', key_remap_options)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Change language
keymap('i', '<C-l>', '<C-^>', key_remap_options)

-- Panes resizing
keymap('n', '<C-Up>', ':resize +2<CR>', key_remap_options)
keymap('n', '<C-Down>', ':resize -2<CR>', key_remap_options)
keymap('n', '<C-Left>', ':vertical resize +2<CR>', key_remap_options)
keymap('n', '<C-Right>', ':vertical resize -2<CR>', key_remap_options)

-- Navigating buffers
keymap('n', '<leader>k', ':bnext<CR>', key_remap_options)
keymap('n', '<leader>j', ':bprevious<CR>', key_remap_options)

-- Navigating tabs
keymap('n', '<leader>K', ':tabprevious<CR>', key_remap_options)
keymap('n', '<leader>J', ':tabnext<CR>', key_remap_options)

-- Navigating quickfix list
keymap('n', '[q', ':cp<CR>', key_remap_options)
keymap('n', ']q', ':cn<CR>', key_remap_options)

-- Moving text up and down
keymap('n', '<A-j>', ':m .+1<CR>==', key_remap_options)
keymap('n', '<A-k>', ':m .-2<CR>==', key_remap_options)
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv", key_remap_options)
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv", key_remap_options)

-- File manager
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', key_remap_options)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', key_remap_options)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', key_remap_options)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', key_remap_options)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', key_remap_options)
keymap('n', '<leader>fs', '<cmd>Telescope lsp_document_symbols<cr>', key_remap_options)

