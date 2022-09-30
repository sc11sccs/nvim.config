local packer_ok, packer = pcall(require, 'packer')
if not packer_ok then
  vim.notify('Packer not found')
  return
end

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Themes and icons
  use 'EdenEast/nightfox.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  
  -- Commenting
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  }

  -- Top and bottom bars
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    }
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- File manager
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly',
  }

  use 'nvim-telescope/telescope.nvim'
  use 'tpope/vim-surround'
  use 'easymotion/vim-easymotion'
end)

