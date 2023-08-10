return{
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = function()
    vim.fn.setcellwidths {
      {0x2502, 0x2502, 1}, --文字幅によるエラーを修正#601
    }

    vim.opt.list = true,
    vim.opt.listchars:append "space:⋅",
    --vim.opt.listchars:append "eol:↴"

    require("indent_blankline").setup {
      space_char_blankline = " ",
      show_current_context = true,
      show_current_context_start = true,
    }
  end
}
