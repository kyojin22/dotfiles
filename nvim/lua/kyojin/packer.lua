-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- LSP Support
  use 'neovim/nvim-lspconfig'          -- Required
  use 'williamboman/mason.nvim'        -- Simple installer
  use 'williamboman/mason-lspconfig.nvim' -- Mason <-> lspconfig bridge

  -- Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'L3MON4D3/LuaSnip'               -- Snippet engine
  use 'saadparwaiz1/cmp_luasnip'       -- Snippet completions
end)
