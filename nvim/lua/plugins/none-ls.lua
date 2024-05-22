return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- lua
                null_ls.builtins.formatting.stylua,
                -- python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                --null_ls.builtins.formatting.yapf,
                -- null_ls.builtins.formatting.flake8,
                -- c
                null_ls.builtins.formatting.clang_format,
                -- R
                --null_ls.builtins.formatting.jupytext,
                -- Rust
                --null_ls.builtins.formatting.ast_grep,
                -- bash
                null_ls.builtins.formatting.shellharden
            },
        })
    end,
}
