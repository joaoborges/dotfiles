return {
	"alexghergh/nvim-tmux-navigation",
	config = function()
		require("nvim-tmux-navigation").setup({
			disable_when_zoomed = true, -- defaults to false
			-- defining these bindings in 'keymaps.lua'
			-- keybindings = {
			-- 	left = "<M-left>",
			-- 	down = "<M-down>",
			-- 	up = "<M-up>",
			-- 	right = "<M-right>",
			-- 	last_active = "<M-\\>",
			-- 	next = "<M-Space>",
			-- },
		})
	end,
}
