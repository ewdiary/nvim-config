return {
    {
        "goolord/alpha-nvim",
        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            local function footer()
              local version = vim.version()
              local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
              local datetime = os.date('%Y/%m/%d %H:%M:%S')

              return print_version .. ' - ' .. datetime
            end

            -- Set header
            dashboard.section.header.val = {
                "                               /$$",
                "                              | $$",
                "  /$$$$$$  /$$  /$$  /$$  /$$$$$$$",
                " /$$__  $$| $$ | $$ | $$ /$$__  $$",
                "| $$$$$$$$| $$ | $$ | $$| $$  | $$",
                "| $$_____/| $$ | $$ | $$| $$  | $$",
                "|  $$$$$$$|  $$$$$/$$$$/|  $$$$$$$",
                " \\_______/ \\_____/\\___/  \\_______/",
            }

            -- Set menu
            dashboard.section.buttons.val = {
                dashboard.button("e", "  > New file", ":ene <BAR> startinsert<CR>"),
                dashboard.button("o", "  > Open file", ":Telescope find_files<CR>"),
                dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("s", "  > Settings", ":e $MYVIMRC<CR>"),
                dashboard.button("q", "  > Quit", ":qa<CR>"),
            }

            dashboard.section.footer.val = footer()     -- 顯示 Footer

            alpha.setup(dashboard.config)

        end
    },
}
