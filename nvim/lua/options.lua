-- Line numbers
vim.opt.number = true                  -- absolute line numbers
vim.opt.relativenumber = true          -- relative numbers (jump with 5j, 3k, etc.)

-- Indentation
vim.opt.tabstop = 4                    -- a tab = 4 spaces visually
vim.opt.shiftwidth = 4                 -- auto-indent uses 4 spaces
vim.opt.expandtab = true               -- convert tabs to spaces
vim.opt.smartindent = true             -- smart auto-indent on new lines

-- Search
vim.opt.ignorecase = true              -- case-insensitive search...
vim.opt.smartcase = true               -- ...unless you type a capital letter
vim.opt.hlsearch = true                -- highlight all matches
vim.opt.incsearch = true               -- highlight as you type

-- UI
vim.opt.wrap = false                   -- don't wrap long lines
vim.opt.cursorline = true              -- highlight current line
vim.opt.scrolloff = 8                  -- keep 8 lines visible above/below cursor
vim.opt.signcolumn = "yes"             -- always show gutter (avoids text shifting)
vim.opt.termguicolors = true           -- enable 24-bit color

-- Behavior
vim.opt.clipboard = "unnamedplus"      -- use system clipboard for yank/paste
vim.opt.undofile = true                -- persistent undo across sessions
vim.opt.swapfile = false               -- disable swap files
vim.opt.updatetime = 250               -- faster response (default 4000ms)

-- Remove ~
vim.opt.fillchars = { eob = " " }

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Force C header files
vim.g.c_syntax_for_h = 1

vim.opt.termguicolors = true

-- Remove the mode from the bottom
vim.opt.showmode = false

-- Change theme
vim.cmd.colorscheme("onedark")

-- Plugin specific configs
-- nvim-tree
local api = require("nvim-tree.api")
vim.keymap.set('n', '<leader>e', api.tree.toggle, {})

-- Mapping keybinds
vim.keymap.set('n', '<leader>t', ':below term<CR>', { silent = true })
vim.keymap.set('n', '<leader>o', ':Outline<CR>', { silent = true })
vim.keymap.set("n", "<leader>.", vim.diagnostic.open_float, {})
vim.keymap.set('n', '<C-t>', ':tabnew<CR>', { silent = true })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>|", ":vsplit<CR>")
vim.keymap.set("n", "<leader>-", ":split<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
