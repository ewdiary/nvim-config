return {
  'nvim-lualine/lualine.nvim',
  config = function()
      require("lualine").setup{
        options = {
            theme = "auto",     -- 見 lualine.nvim/THEMES.md
        }
      }
  end
}
