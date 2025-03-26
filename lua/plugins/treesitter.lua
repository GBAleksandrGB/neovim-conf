return {
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('nvim-treesitter.configs').setup({
				ensure_installed = { "python", "lua" },
				auto_install = true,
				highlight = {
					enable = true,
				}
			})
		end
	}
}
