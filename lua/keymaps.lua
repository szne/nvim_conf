vim.g.mapleader = ' ' -- マップリーダーの設定

-- Personal setting

vim.keymap.set('n', '<A-t>', '<Cmd>ToggleTerm<CR>')
vim.keymap.set('n', '<Leader><Leader>', '<Cmd>noh<CR>')

-- nvim-tree.lua

--vim.keymap.set('n', '<A-e>', '<Cmd>NvimTreeToggle<CR>')

-- hop.nvim

vim.api.nvim_set_keymap('n', '<Leader>/', '<Cmd>HopPattern<CR>', { noremap = true })
vim.api.nvim_set_keymap('x', '<Leader>/', '<Cmd>HopPattern<CR>', { noremap = true })

-- Telescope-nvim

vim.keymap.set('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.keymap.set('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.keymap.set('n', '<Leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true })
vim.keymap.set("n", "<leader>fr", "<Cmd>lua require('telescope.builtin').oldfiles()<CR>")

-- barbar.nvim

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-Left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-Right>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-,>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
