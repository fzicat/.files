
-- insures packer is installed
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'glepnir/dashboard-nvim'
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'phaazon/hop.nvim'
    use 'nvim-treesitter/nvim-treesitter'

    -- cmp plugins
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lua"
    use "hrsh7th/cmp-nvim-lsp"

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    use "neovim/nvim-lspconfig"
    -- use "williamboman/nvim-lsp-installer" -- simple to use language server nvim-lsp-installer
    -- use 'onsails/lspkind-nvim'

    use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
    -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- LSP
    -- use {
    --     "williamboman/nvim-lsp-installer",
    --     {
    --         "neovim/nvim-lspconfig",
    --         config = function()
    --             require("nvim-lsp-installer").setup {}
    --             local lspconfig = require("lspconfig")
    --             lspconfig.sumneko_lua.setup {}
    --             lspconfig.pyright.setup {}
    --         end
    --     }
    -- }
end)

