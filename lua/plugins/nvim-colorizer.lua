return {
  "NvChad/nvim-colorizer.lua",
  event = {'BufNewFile', 'BufRead'},
  config = function()
    require 'colorizer'.setup()
  end
}
