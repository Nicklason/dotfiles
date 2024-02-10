local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'tpope/vim-sensible'
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.5' })
Plug('rose-pine/neovim', { as = 'rose-pine' })
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug('Nicklason/harpoon', { branch = 'harpoon2' })
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'

-- LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug('VonHeikemen/lsp-zero.nvim', { branch = 'v3.x'})

Plug 'github/copilot.vim'
Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'folke/trouble.nvim'

Plug 'folke/todo-comments.nvim'

Plug 'sbdchd/neoformat'

Plug 'ThePrimeagen/vim-be-good'

vim.call('plug#end')
