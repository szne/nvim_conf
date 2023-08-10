return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufNewFile', 'BufRead' },
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        "typescript",
        "javascript",
        "rust",
        "python",
        "go",
        "lua",
        "bash",
        "html",
        "css",
        "vue",
        "vim",
        "yaml",
        "toml",
        "ini",
        "json",
        "dockerfile",
        "markdown",
        "diff",
        "git_config",
        "gitignore"
      },
      highlight = {
        enable = true,
      },
    }
  end
}
