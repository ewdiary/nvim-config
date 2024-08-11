-- Nvim --
vim.cmd("set expandtab")        -- 將 tab 鍵轉換為空格
vim.cmd("set tabstop=4")        -- tab 字元在文件中顯示的寬度，僅影響顯示效果
vim.cmd("set softtabstop=4")    -- tab 鍵插入的空格數
vim.cmd("set shiftwidth=4")     -- 使用 << 或 >> 所縮排的空格

vim.g.mapleader = " "           -- 設定 leader key

vim.opt.swapfile = false        -- 禁用 swap file

vim.opt.conceallevel = 2        -- 收合 markdown 語法的 link

vim.api.nvim_set_option("clipboard", "unnamedplus")     -- 打通系統 clipboard，wayland 需裝 wl-clipboard

vim.wo.number = true            -- 顯示行號
vim.wo.relativenumber = true    --顯示相對行號

vim.wo.cursorline = true        -- 水平高亮
vim.wo.cursorcolumn = true      -- 垂直高亮

-- Buffer --

vim.keymap.set('n', '<leader>l', ':bnext<CR>')    -- 切換 Buffer
vim.keymap.set('n', '<leader>h', ':bprevious<CR>')

vim.keymap.set('n', '<M-w>', ':bd<CR>', { noremap = true, silent = true})     -- 關閉 Buffer 而不是整個 nvim
vim.keymap.set('n', '<M-r>', ':vsp<CR>', { noremap = true, silent = true})      -- 垂直分割
vim.keymap.set('n', '<M-l>', '<C-w>l', { noremap = true, silent = true})      -- 垂直分割（向右移動）
vim.keymap.set('n', '<M-h>', '<C-w>h', { noremap = true, silent = true})      -- 垂直分割（向左移動）

-- Plugins --
vim.opt.termguicolors = true    -- Bufferline 文檔要求

