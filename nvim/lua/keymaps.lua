-- lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- neo-tree
vim.keymap.set("n", "<Leader>\\", ":Neotree filesystem reveal left toggle<CR>", {})

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

-- oil 
vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

-- Projects
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<cr>", { desc = "Find projects" })

-- Todo
vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Comments
vim.keymap.set("n", "<leader>/", function() require('Comment.api').toggle.linewise.current() end, { desc = "Comment toggle current line" })
vim.keymap.set("v", "<leader>/",
    function()
        local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
        vim.api.nvim_feedkeys(esc, 'nx', false)
        require('Comment.api').toggle.linewise(vim.fn.visualmode())
    end, { desc = "Comment toggle current selection" })

-- save
vim.keymap.set("n", "<C-s>", ":w<cr>", { desc = "Save" })
vim.keymap.set("i", "<C-s>", "<ESC>:w<cr>a", { desc = "Save" })
vim.keymap.set("n", "<F2>", ":w<cr>", { desc = "Save" })
vim.keymap.set("i", "<F2>", "<ESC>:w<cr>a", { desc = "Save" })

-- buffers
--lvim.keys.normal_mode["<F3>"] = ":bprevious<cr>"
--lvim.keys.insert_mode["<F3>"] = "<ESC>:bprevious<cr>"
--lvim.keys.normal_mode["<F4>"] = ":bnext<cr>"
--lvim.keys.insert_mode["<F4>"] = "<ESC>:bnext<cr>"

-- spell
--lvim.keys.normal_mode["<F6>"] = "<cmd>lua ToggleSpell()<cr>"
--lvim.keys.insert_mode["<F6>"] = "<ESC><cmd>lua ToggleSpell()<cr>a"

-- background
vim.keymap.set("n", "<F8>", "<cmd>lua ToggleBackground()<cr>", { desc = "Toggle background light/black" })
vim.keymap.set("i", "<F8>", "<ESC><cmd>lua ToggleBackground()<cr>a", { desc = "Toggle background light/black" })

-- programming
vim.keymap.set("n", "<F9>", ":make<cr>", { desc = "Make" })
vim.keymap.set("i", "<F9>", "<ESC>:make<cr>a", { desc = "Make" })

-- exit
vim.keymap.set("n", "<F10>", ":q<cr>", { desc = "Exit" })
vim.keymap.set("i", "<F10>", "<ESC>:q<cr>", { desc = "Exit" })
vim.keymap.set("n", "<S-F10>", ":qa<cr>", { desc = "Exit" })
vim.keymap.set("i", "<S_F10>", "<ESC>:q<cr>", { desc = "Exit" })
--
--lvim.keys.normal_mode["<S-Up>"] = "<Cmd>BufferLineCyclePrev<CR>"
--lvim.keys.normal_mode["<S-Down>"] = "<Cmd>BufferLineCycleNext<CR>"
--lvim.keys.normal_mode["<C-W>"] = "<Cmd>BufferKill<CR>"
--lvim.keys.normal_mode["<C-Up>"] = "<C-W>h"
--lvim.keys.normal_mode["<C-Down>"] = "<C-W>l"


