return {
    -- Gruvbox 配色方案
    { 
        "ellisonleao/gruvbox.nvim", priority = 1000,
        config = function()
            -- 設定 Gruvbox
            -- vim.o.background = "dark"       -- or "light" for light mode
            -- vim.cmd([[colorscheme gruvbox]])
        end
    },

    -- Sonokai 配色方案
     {
        'sainnhe/sonokai', lazy = false, priority = 1000,
        config = function()   -- 同等於 require() 的功能
            -- 設定 Sonokai 
            -- vim.g.sonokai_style = "shusia"    -- "default", "atlantis", "andromeda", "shusia", "maia", "espresso"
            -- vim.g.sonokai_enable_italic = true    -- 啟用斜體
            -- vim.cmd.colorscheme("sonokai")
        end
    },

    -- Kanagawa 配色方案
    {
        'rebelot/kanagawa.nvim',
        config = function()
            -- kanagawa-wave, kanagawa-dragon, kanagawa-lotus
            vim.cmd.colorscheme('kanagawa-dragon')
        end
    },
}
