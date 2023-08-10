return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  event = "VeryLazy", --persistence.nvimから復活させても起動できるようにするため
  --event = {'BufNewFile', 'BufRead'},
  keys = {
    { "<A-e>", "<CMD>NvimTreeToggle<CR>", desc = "Nvim-Tree" }
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}
