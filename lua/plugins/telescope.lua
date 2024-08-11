return {
    -- Telescope.nvim
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    -- 設定 Telescope.nvim
    config = function()
        local telescope = require('telescope')                              -- 配置

        telescope.setup {
            pickers = {
                find_files = {
                    theme = "ivy",       -- Theme: dropdown, cursor, ivy
                }
            }
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<M-o>', builtin.find_files, {})                -- 檔名搜尋
        vim.keymap.set('n', '<M-S-f>', builtin.live_grep, {})               -- 「全」文本搜尋，需要安裝 ripgrep
        vim.keymap.set('n', '<M-f>', builtin.current_buffer_fuzzy_find, {}) -- 「當前 Buffer」文本搜尋，需要安裝 ripgrep
        vim.keymap.set('n', '<leader>b', builtin.buffers, {}) -- Buffers 搜尋
    end

}
