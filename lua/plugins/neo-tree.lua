return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none"})
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none"})
		--vim.diagnostic.config({
		--  signs = {
		--		text = {
		--			[vim.diagnostic.severity.ERROR] = " ",
		--			[vim.diagnostic.severity.WARN] = " ",
		--			[vim.diagnostic.severity.INFO] = " ",
		--			[vim.diagnostic.severity.HINT] = " ",
		--		},
		--	},
		--})
		-- In older versions, you can define the signs manually:
		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
		require("neo-tree").setup({
			close_if_last_window = false,
		})
	end
}
