return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- https://github.com/williamboman/mason-lspconfig.nvim
					"lua_ls",
					-- "tsserver",
					-- "tl_ts",
					"clangd",
					"ltex",
					"pyre",
					"pyright",
					"r_language_server",
					"rust_analyzer",
					"bashls",
                    "html",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- supported server configurations
            -- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/bashls.lua

            capabilities.textDocument.semanticHighlighting = true
            capabilities.offsetEncoding = { "utf-8" }

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			-- lspconfig.tsserver.setup({
			-- lspconfig.tl_ts.setup({
			-- 	capabilities = capabilities
			-- })
			lspconfig.clangd.setup({
				capabilities = capabilities
			})
			lspconfig.texlab.setup({
				capabilities = capabilities
			})
			lspconfig.ltex.setup({
				capabilities = capabilities
			})
			lspconfig.pyright.setup({
				capabilities = capabilities
			})
			lspconfig.r_language_server.setup({
				capabilities = capabilities
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})

		end,
	},
}
