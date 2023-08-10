return {
  'akinsho/toggleterm.nvim',
  version = "*",
  event = { 'BufNewFile', 'BufRead' },
  config = true,
  keys = {
    {
      "<leader>g",
      function()
        local Terminal = require('toggleterm.terminal').Terminal
        local lazygit  = Terminal:new({
          cmd = "lazygit",
          direction = "float",
          hidden = true
        })

        lazygit:toggle()
      end,
      desc = "Open Lazygit (Toggleterm)"
    },
  }
}
