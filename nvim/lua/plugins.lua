return require('packer').startup {
	function(use)
        use 'wbthomason/packer.nvim' -- Package manager? We already have packer?

        use 'neovim/nvim-lspconfig'

        use 'williamboman/nvim-lsp-installer'

        use 'nvim-treesitter/nvim-treesitter'

        use 'nvim-lua/plenary.nvim'
        use 'ThePrimeagen/harpoon'

        use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }

        use 'hrsh7th/nvim-cmp'
        use 'hrsh7th/cmp-nvim-lua'
        use 'hrsh7th/cmp-nvim-lsp'

        use 'L3MON4D3/LuaSnip'

	end,
	config = {
	  package_root = vim.fn.stdpath('config') .. '/site/pack'
	}
}
