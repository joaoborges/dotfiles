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
			window = {
				position = "left",
			},
			filesystem = {
				filtered_items = {
					visible = true, -- when true, they will just be displayed differently than normal items
					hide_hidden = false, -- show hidden files
				},
			},
			-- opts = {
			-- 	sources = { "filesystem", "buffers", "git_status", "document_symbols" },
			-- },
		})
	end,
}
