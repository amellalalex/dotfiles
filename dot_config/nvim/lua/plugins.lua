-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Automatically PackerCompile whenever this file changes
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'sainnhe/sonokai'
	use { "williamboman/mason.nvim" } -- LSP Manager
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
--	use {'neoclide/coc.nvim', run = 'yarn install --frozen-lockfile'}
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
	use 'kdheepak/lazygit.nvim'
	-- Autocompletion support
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	-- Autocompletion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
<<<<<<< Updated upstream
	-- Multidimensional undo 
	use 'mbbill/undotree'
=======
	-- Harpoon
	use 'nvim-lua/plenary.nvim'
	    use { "ThePrimeagen/harpoon", requires = "nvim-lua/plenary.nvim" }
>>>>>>> Stashed changes
end)

