return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
    ⠀⠀⠀    ⢀⠐⠠⠀⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀    ⢀⠀⡐⠠⢈⠐⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡀⠢⠄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
     ⠀   ⡀⠳⣀⠁⠂⠌⠀⡀⠠⠀⠀⠀⠀ ⠀⠀⠀⠀⠣⢌⡑⢢⠁⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
        ⢀⠡⢀⠫⡔⠠⠐⠀⢁⠀⠠⠀⠀⠀⠀⠀⠀⠀⢀⡒⣌⠱⣈⠖⡰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⠀⣀⣀⣀⠀⠀⢀⣀⣀⠀⠀⢀⣀⣀⣀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀
        ⡀⠎⡠⢂⡙⢤⠁⢈⠀⠄⠂⠐⠀⠀ ⠀⠀⠀⠀⡖⢬⠱⣌⠲⣡⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⣠⠖⠛⠛⠛⠻⣶⡄⠀⠀⠀⠀⣠⡶⠛⠋⠉⠛⠓⢦⡀⠀⠀⠀⢀⣤⠶⠛⠛⠛⠛⠳⣦⣄⠀⠘⣿⣿⣿⡀⠀⠀⠀⠀⠀⣾⣿⣿⠃⠀⣿⣿⣿⠀⠀⢸⣿⣿⣧⣾⣿⣿⣿⣿⣿⣄⣴⣿⣿⣿⣿⣿⣿⣷⡀
       ⠰⣁⠦⢡⡘⢌⡃⠀⠄⠂⠈⠄⠁⢂⠀⠀⠀⠀⠀⠰⣩⠖⣣⢎⡵⢢⠀⠀⠀⠀⠀⠀⠀⠀⣿⠏⠀⠀⠀⠀⠀⠀⠈⣿⡄⠀⠀⣼⠋⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⢠⣾⠃⠀⠀⠀⠀⠀⠀⠈⢻⣦⠀⠹⣿⣿⣧⠀⠀⠀⠀⣸⣿⣿⠏⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⡟⠉⠀⠀⠀⢻⣿⣿⣿⠋⠀⠀⠀⢹⣿⣿⣷
       ⡱⢌⠲⣡⠚⡔⡂⠀⠀⠌⠐⢈⠀⠂⠄⡀⠀⠀⠀⢐⣣⢛⡴⣋⠶⣩⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣽⡇⠀⢸⣿⣠⣄⣤⣠⣄⣤⣠⣄⣬⣇⠀⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡆⠀⢻⣿⣿⣆⠀⠀⢰⣿⣿⡟⠀⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⣏⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⢸⣿⣿⣿
       ⡜⢬⢓⡴⢩⢲⡁⠀⠀⠀⠈⠄⡈⠐⠠⠐⡀⠀⠀⢠⢏⡾⣱⢭⣫⠵⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⢾⡇⠀⢸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⢿⣿⣿⡄⢀⣿⣿⡿⠀⠀⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⡧⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⢸⣿⣿⣿
       ⣜⢣⢏⡴⣋⠶⡁⠀⠀⠀⠀⠐⠠⠁⢂⠁⠄⠡⠀⢘⣮⢳⡝⣮⢳⢯⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣻⡇⠀⠘⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣇⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠁⠀⠀⠈⣿⣿⣧⣼⣿⣿⠁⠀⠀⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⡗⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⢸⣿⣿⣿
       ⣎⣏⡞⢶⢭⣫⠅⠀⠀⠀⠀⠀⠀⡁⠂⠌⠠⠁⠌⢨⢳⣏⣟⡾⣽⣺⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⣽⡇⠀⠀⠙⣷⣀⠀⠀⠀⠀⠀⠀⣠⡀⠀⠈⠻⣆⠀⠀⠀⠀⠀⠀⣠⣾⠃⠀⠀⠀⠀⠘⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⢸⣿⣿⣏⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⢸⣿⣿⣿
       ⣞⡼⣺⡝⣮⢳⡃⠀⠀⠀⠀⠀⠀⠀⠡⠈⠄⠡⠈⠴⣃⠾⣽⣞⡷⣽⠀⠀⠀⠀⠀⠀⠀⠀⠿⠀⠀⠀⠀⠀⠀⠀⠀⠺⠇⠀⠀⠀⠀⠙⠻⠶⠶⠶⠖⠛⠉⠀⠀⠀⠀⠈⠛⠶⠶⠶⠶⠞⠋⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠋⠀⠀⠀⠀⠀⠀⠟⠻⠛⠀⠀⠘⠛⠟⠃⠀⠀⠀⠀⠘⠛⠟⠛⠀⠀⠀⠀⠘⠛⠻⠛
       ⢿⣱⣏⡷⡽⣮⠇⠀⠀⠀⠀⠀⠀⠀⠀⢂⠐⡀⠂⢴⣋⠶⡹⣽⣳⢯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
       ⠈⠳⢾⣹⢷⣫⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⢡⠘⣰⠭⣞⡱⡝⠏⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀    ⠈⠹⢯⣷⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⣜⡻⣴⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ⠀    ⠀⠀⠈⠳⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢼⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
    ]]

    local function button(sc, txt, keybind, keybind_opts)
      local b = dashboard.button(sc, txt, keybind, keybind_opts)
      b.opts.hl = "icebergNormalFg"
      b.opts.hl_shortcut = "Title"
      return b
    end

    dashboard.section.buttons.val = {
      button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
      button("m", " " .. " Mason", ":Mason<CR>"),
      button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
      button("q", " " .. " Quit", ":qa<CR>"),

    }
    dashboard.section.header.val = vim.split(logo, "\n")
    dashboard.section.header.opts.hl = "Function"
    dashboard.section.footer.opts.hl = "DiagnosticHint"

    require("alpha").setup(require("alpha.themes.dashboard").opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local nvimVer = vim.version()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        local version = " Neovim v" .. nvimVer.major .. "." .. nvimVer.minor .. "." .. nvimVer.patch
        local plugins = "⚡ Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms"
        dashboard.section.footer.val = version .. "\t" .. plugins .. "\n"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
