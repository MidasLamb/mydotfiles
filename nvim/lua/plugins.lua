return require('packer').startup {
	function(use)
        use 'wbthomason/packer.nvim' -- Package manager? We already have packer?
        use 'neovim/nvim-lspconfig'
        use 'williamboman/nvim-lsp-installer'
        use 'nvim-treesitter/nvim-treesitter'

        use 'nvim-lua/plenary.nvim'
        use 'ThePrimeagen/harpoon'
	end,
	config = {
	  package_root = vim.fn.stdpath('config') .. '/site/pack'
	}
}
