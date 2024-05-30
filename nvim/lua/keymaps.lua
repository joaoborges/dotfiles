-- neo-tree
vim.keymap.set("n", "<Leader>\\", "<cmd>Neotree filesystem reveal left toggle<cr>", { desc = "Toggle Neotree" })
vim.keymap.set({ "n", "i" }, "<c-\\>", "<cmd>Neotree filesystem reveal left toggle<cr>", { desc = "Toggle Neotree" })

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- oil
vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

-- projects
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", { desc = "Find projects" })

-- todo
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- trouble
vim.keymap.set("n", "<leader>tt", function()
	require("trouble").toggle()
end, { desc = "Toggle Trouble" } )
vim.keymap.set("n", "<leader>tw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Toggle Trouble Workspace" } )
vim.keymap.set("n", "<leader>tf", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Toggle Trouble File/Document" } )
vim.keymap.set("n", "<leader>tq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Toggle Trouble Quickfix" } )
vim.keymap.set("n", "<leader>tl", function()
	require("trouble").toggle("loclist")
end, { desc = "Toggle Trouble Loclist" } )
vim.keymap.set("n", "<space>tr", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Toggle Trouble LSP References" } )

-- comments
vim.keymap.set("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Comment toggle current line" })
vim.keymap.set("v", "<leader>/", function()
	local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
	vim.api.nvim_feedkeys(esc, "nx", false)
	require("Comment.api").toggle.linewise(vim.fn.visualmode())
end, { desc = "Comment toggle current selection" })

-- editor
vim.keymap.set("n", '<leader>h', '<cmd>nohlsearch<cr>', { desc = "Removing search highlight" })

-- save
vim.keymap.set({ "n", "i" }, "<c-s>", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set({ "n", "i" }, "<f2>", "<cmd>w<cr>", { desc = "Save" })

-- buffers
vim.keymap.set({ "n", "i" }, "<c-up>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set({ "n", "i" }, "<c-down>", "<cmd>bnext<cr>", { desc = "Next buffer" })
vim.keymap.set({ "n", "i" }, "<c-w>", "<cmd>BufDel<cr>", { desc = "Close current buffer" })

-- windows (tmux aware)
vim.keymap.set({ "n", "i" }, "<a-left>", "<cmd>NvimTmuxNavigateLeft<cr>", { desc = "Left window" })
vim.keymap.set({ "n", "i" }, "<a-down>", "<cmd>NvimTmuxNavigateDown<cr>", { desc = "Down window" })
vim.keymap.set({ "n", "i" }, "<a-up>", "<cmd>NvimTmuxNavigateUp<cr>", { desc = "Up window" })
vim.keymap.set({ "n", "i" }, "<a-right>", "<cmd>NvimTmuxNavigateRight<cr>", { desc = "Right window" })

-- spell
vim.keymap.set({ "n", "i" }, "<f6>", "<cmd>lua ToggleSpell()<cr>", { desc = "Toggle spell check [en/pt/none]" })

-- trouble

-- background
vim.keymap.set({ "n", "i" }, "<f8>", "<cmd>lua ToggleBackground()<cr>", { desc = "Toggle background light/black" })

-- programming
vim.keymap.set({ "n", "i" }, "<f9>", "<cmd>make<cr>", { desc = "Make" })
-- Git
vim.keymap.set("n", "<leader>gs", "<cmd>Git status<cr>", { desc = "Git status" })
vim.keymap.set("n", "<leader>ga", "<cmd>Git add .<cr>", { desc = "Git add all files" })
vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", "<cmd>Git pull<cr>", { desc = "Git pull" })
-- lsp-config
vim.keymap.set("n", "H", vim.lsp.buf.hover, { desc = "LSP Code [H]over" })
vim.keymap.set("n", "cd", vim.lsp.buf.definition, { desc = "LSP [C]ode [D]efinition"})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP [C]ode [A]ction" })
-- none-ls
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "LSP auto [C]ode [F]ormat" })

-- exit
vim.keymap.set({ "n", "i" }, "<f10>", "<cmd>q<cr>", { desc = "Exit" })
vim.keymap.set({ "n", "i" }, "<s-f10>", "<cmd>qa<cr>", { desc = "Exit" })

-- TODO: moving all keymaps to this file
-- e.g., plugins/completions.lua
-- e.g., plugins/debugging.lua
