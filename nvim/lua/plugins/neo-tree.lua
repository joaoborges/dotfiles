return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			source_selector = {
				winbar = true,
				statusline = false,
			},
			-- opts = {
			-- 	sources = { "filesystem", "buffers", "git_status", "document_symbols" },
			-- },
		})
	end,
}
