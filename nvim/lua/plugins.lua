-- This file can be loaded bysvermeulen/vim-cutlass calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    "williamboman/nvim-lsp-installer",
    'neovim/nvim-lspconfig', -- Collection of configurations for the built-in LSP client
  }
  
  use {
    'vijaymarupudi/nvim-fzf',
    'vijaymarupudi/nvim-fzf-commands',
    'ibhagwan/fzf-lua',
  }
  
  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Lua
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use 'glepnir/lspsaga.nvim'

  use 'simrat39/rust-tools.nvim'
  use 'mfussenegger/nvim-dap'

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use {'nvim-orgmode/orgmode', config = function()
        require('orgmode').setup_ts_grammar()
    end
  }

  use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {}
    end,
    requires = "nvim-lua/plenary.nvim"
  }

  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons' -- optional, for file icon
    }
  }

  use 'mattn/emmet-vim'
  use 'tpope/vim-sensible'
  use 'scrooloose/nerdcommenter'
  use 'jiangmiao/auto-pairs'
  use 'terryma/vim-multiple-cursors'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'cedarbaum/fugitive-azure-devops.vim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jose-elias-alvarez/nvim-lsp-ts-utils'
  use 'tpope/vim-unimpaired'
  
  use 'svermeulen/vim-yoink'
  use 'svermeulen/vim-cutlass'
  
  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'
  use 'nvim-lua/popup.nvim'

  -- colorscheme
  use 'savq/melange'                                
  use 'Shatur/neovim-ayu'
  use 'folke/tokyonight.nvim'
  use 'jacoborus/tender.vim'
  use 'EdenEast/nightfox.nvim'
  use 'folke/lsp-colors.nvim'

end)
