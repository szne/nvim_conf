return {
  "hrsh7th/vim-searchx",
  event = {"VeryLazy"},
  config = function()
    vim.g.searchx = {}

    -- Auto jump if the recent input matches to any marker.
    vim.g.searchx.auto_accept = true

    -- The scrolloff value for moving to next/prev.
    vim.g.searchx.scrolloff = vim.o.scrolloff

    -- To enable scrolling animation.
    vim.g.searchx.scrolltime = 500

    -- To enable auto nohlsearch after cursor is moved
    vim.g.searchx.nohlsearch = {}
    vim.g.searchx.nohlsearch.jump = true

    -- Marker characters.
    vim.g.searchx.markers = {}
    for i = 65, 90 do
      table.insert(vim.g.searchx.markers, string.char(i))
    end

    -- Convert search pattern.
    function g:searchx_convert(input)
      if not input:match("%w") then
        return "\\V" .. input
      end
      return input:sub(1, 1) .. input:sub(2):gsub("\\%s", ".\\{-}")
    end

  end
}
