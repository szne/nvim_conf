local function reqp(fileName)
  return { require("plugins/" .. fileName) }
end

return {
  -- システム --
  reqp("persistence-nvim"),
  reqp("toggleterm"),

  -- ファイラ --
  reqp("nvim-tree"),

  -- ツリーシッター --
  reqp("nvim-treesitter"),
  --reqp("telescope-frecency"),

  -- LSP他 --
  reqp("nvim-lspconfig"),
  reqp("mason"),
  reqp("nvim-cmp"),

  -- 入力支援 --
  reqp("lexima"),

  -- 検索、移動 --
  reqp("nvim-telescope"),
  reqp("hop-nvim"),
  reqp("flash-nvim"),

  -- 表示 --
  reqp("nvim-colorizer"),

  -- GIT --
  --reqp("gina"),

  -- UI --
  reqp("alpha-nvim"),
  reqp("lualine"),
  reqp("barbar"),
  reqp("indent-blankline-nvim"),
  --reqp("mini-indentscope"),
}
