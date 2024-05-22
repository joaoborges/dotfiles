return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local alpha = require("alpha")

        -- local dashboard = require("alpha.themes.startify")
		local dashboard = require("alpha.themes.dashboard")
		-- local dashboard = require("alpha.themes.theta")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
		    dashboard.button("e", "  > File Explorer", "<cmd>Neotree filesystem reveal left toggle<CR>"),
		    dashboard.button("r", "󰁯  > Recent Files", "<cmd>Telescope oldfiles<CR>"),
		    dashboard.button("p", "󱌣  > Projects", "<cmd>Telescope projects<CR>"),
		    dashboard.button("n", "  > New File", "<cmd>ene<CR>"),
		    dashboard.button("f", "󰈞  > Find File", "<cmd>Telescope find_files<CR>"),
		    dashboard.button("w", "󰈬  > Find Word", "<cmd>Telescope live_grep<CR>"),
		    dashboard.button("b", "  > Bookmarks", "<cmd>Telescope marks<CR>"),
		    dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
		}

    -- icons:
        --   󰈢      󰈬    󰱼  󰈞  
        --           󱌣  
        -- 󰊄  󰈚        󰁯  
        -- 󰂖  󰅚    󰒲 
        --        

		alpha.setup(dashboard.opts)
	end,
}
