-- lsp-config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- neo-tree
vim.keymap.set("n", "<Leader>\\", ":Neotree filesystem reveal left toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set({"n", "i"}, "<c-\\>", ":Neotree filesystem reveal left toggle<CR>", { desc = "Toggle Neotree" })

-- none-ls
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "LSP auto format" })

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
vim.keymap.set({"n", "i"}, "<c-s>", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set({"n", "i"}, "<f2>", "<cmd>w<cr>", { desc = "Save" })

-- buffers
vim.keymap.set('n', '<c-up>', '<cmd>bprevious<cr>', { desc = "Previous buffer" })
vim.keymap.set('n', '<c-down>', '<cmd>bnext<cr>', { desc = "Next buffer" })
vim.keymap.set('n', "<c-w>", "<cmd>BufDel<cr>", { desc = "Close current buffer" })

-- windows
vim.keymap.set('n', '<c-left>', '<cmd>wincmd h<cr>', { desc = "Left window" })
-- NOTE: i'm using UP and DOWN for buffers
vim.keymap.set('n', '<c-right>', '<cmd>wincmd l<cr>', { desc = "Right window" })

-- spell
-- TODO: configure spell check
--lvim.keys.normal_mode["<F6>"] = "<cmd>lua ToggleSpell()<cr>"

-- background
vim.keymap.set({"n", "i"}, "<f8>", "<cmd>lua ToggleBackground()<cr>", { desc = "Toggle background light/black" })

-- programming
vim.keymap.set({"n", "i"}, "<f9>", "<cmd>make<cr>", { desc = "Make" })
-- TODO: add git keymaps here
vim.keymap.set("n", "<leader>gs", "<cmd>Git status<cr>", { desc = "Git status" })
vim.keymap.set("n", "<leader>ga", "<cmd>Git add .<cr>", { desc = "Git add all files" })
vim.keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", "<cmd>Git pull<cr>", { desc = "Git pull" })

-- exit
vim.keymap.set({"n", "i"}, "<f10>", "<cmd>q<cr>", { desc = "Exit" })
vim.keymap.set({"n", "i"}, "<s-f10>", "<cmd>qa<cr>", { desc = "Exit" })

