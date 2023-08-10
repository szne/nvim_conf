return{
  'nvim-lualine/lualine.nvim',
  event = {'BufNewFile', 'BufRead'},
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("lualine").setup()
  end
}
