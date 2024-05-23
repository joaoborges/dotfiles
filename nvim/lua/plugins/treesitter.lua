return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            -- modification for R-nvim
            ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb" },
        })
    end,
}
