return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
                -- theme = 'dracula'
                -- theme = 'onedark'
                -- theme = 'onelight'
                theme = 'powerline'
                -- theme = 'powerline_dark'
            }
        })
    end
}
