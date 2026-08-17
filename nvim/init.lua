vim.g.mapleader = " "
-- Install all the plugins 
require("plugins.pack")
-- Configure every plugin
require("plugins.nvim-tree")
require("plugins.nvim-treesitter")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.autopairs")
require("plugins.lsp")
require("plugins.outline")
require("plugins.onedark")
-- Base configuration
require("options")
