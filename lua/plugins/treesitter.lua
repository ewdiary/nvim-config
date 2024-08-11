return {

    -- Treesitter.nvim
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    -- 設定 Treesitter.nvim
    config = function()
        local configs = require('nvim-treesitter.configs')

        configs.setup {
            ensure_install = { 
                "lua", "vim", "vimdoc", "javascript", "css", "html", "markdown", "markdown_inline", "yaml", "toml",
                "bash", 
            }, -- 安裝的 parser
            sync_install = false,
            highlight = { enable = true },
            -- indent = { enable = true },
        }
    end
}
