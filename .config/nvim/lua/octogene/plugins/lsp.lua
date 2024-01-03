return  {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup()

		mason_lspconfig.setup {
			 ensure_installed = { "rust_analyzer", "zls", "solc" },
		}

		lspconfig.rust_analyzer.setup {}
		lspconfig.zls.setup {}
    lspconfig.solidity.setup {}
    -- lspconfig.kotlin_language_server.setup {}
	end,
}
