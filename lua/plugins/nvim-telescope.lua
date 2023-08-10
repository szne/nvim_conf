return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.2',
  event = "VeryLazy", --persistence.nvimから復活させても起動できるようにするため
  cmd = 'Telescope',
  dependencies = { 'nvim-lua/plenary.nvim' },
}
