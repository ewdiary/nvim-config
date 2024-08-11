return {
  
    -- Neotree
    "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    -- 設定 Neo-tree
    config = function()
        local neoTree = require('neo-tree')

        neoTree.setup {
            source_selector = { winbar = false, statusline = false, },
            window = { 
                mappings = { 
                    ["P"] = {"toggle_preview", config = { use_float = true, use_image_nvim = false}},       -- 圖片預覽需使用其他支援之 terminal
                    -- ["l"] = "focus_preview", 
                    ["l"] = "open", 
                    ["h"] = "navigate_up", 
                    ["C"] = "toggle_node", 
                },
            },
        }

      vim.keymap.set('n', '<M-e>', ':Neotree source=filesystem reveal=true position=float toggle=true selector=true<CR>')
      -- vim.keymap.set('n', '<M-h>', '<C-w>h')     --切換檔案與 neoTree 間的 focus，float 模式無效（文檔好像沒有說明？）
      -- vim.keymap.set('n', '<M-l>', '<C-w>l')
    end
}
