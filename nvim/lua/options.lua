-- Line numbers
vim.opt.number = true          
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- UI
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

-- Behavior
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.updatetime = 250

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
