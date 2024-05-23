return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				active = true,
				on_config_done = nil,
				keymap = {
					normal_mode = {},
				},
				highlights = {
					background = {
						italic = true,
					},
					buffer_selected = {
						bold = true,
					},
				},
				themable = true,
				numbers = "ordinal",
				close_command = "BufDel", -- can be a string | function, | false see "Mouse actions"
				right_mouse_command = "BufDel", -- can be a string | function | false, see "Mouse actions"
				left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
				-- middle_mouse_command = nil, -- can be a string | function, | false see "Mouse actions"
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = false,
						highlight = "PanelHeading",
					},
				},
				diagnostics = "nvim_lsp",
				diagnostics_update_in_insert = false,
			},
		})
	end,
}
