require('config.lazy-nvim')
require('core.mappings')
require('core.options')
require('core.plugins')

require('config.yank-highlight')
require('config.treesitter')
require('config.telescope')
require('config.which-key')

require('leap').create_default_mappings()

-- mason-lspconfig requires that these setup functions are called in this order
-- before setting up the servers.
require('mason').setup()
require('mason-lspconfig').setup()

-- Setup neovim lua configuration
require('neodev').setup()
require('config.lsp_configuration')
require('config.nvim-cmp')
