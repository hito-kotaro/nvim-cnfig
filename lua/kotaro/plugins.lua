local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- color scheme
	use 'NLKNguyen/papercolor-theme'

	-- guide
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'

	-- highlight
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-telescope/telescope.nvim'
	use 'neovim/nvim-lspconfig'

	-- auto complete
	use 'onsails/lspkind-nvim'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'


	-- auto tag closing
	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'

	-- use {
	--   'nvim-telescope/telescope.nvim',
	--  tag = '0.1.0',
	--   require = { {'nvim-lua/plenary.nvim'} }
	-- }


	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
