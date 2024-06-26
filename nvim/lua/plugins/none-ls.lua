return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			-- debug = true,
			sources = {
                null_ls.builtins.formatting.prettier,
				-- lua
				null_ls.builtins.formatting.stylua,
				-- python
				require("none-ls.diagnostics.flake8"),
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				--null_ls.builtins.formatting.yapf,
				-- null_ls.builtins.formatting.refactoring,
				-- c
                -- null_ls.builtins.formatting.astyle,
				-- null_ls.builtins.formatting.clang_format,
                -- null_ls.builtins.diagnostics.gccdiag,
				-- R
				-- null_ls.builtins.formatting.format_r,
				-- null_ls.builtins.formatting.styler,
				-- Rust
				-- null_ls.builtins.formatting.ast_grep,
				-- bash
				null_ls.builtins.formatting.shellharden,
                -- text
				-- null_ls.builtins.code_actions.proselint,
			},
		})
	end,
}
