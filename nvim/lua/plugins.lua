-- insures packer is installed
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'glepnir/dashboard-nvim'
    use 'terrortylor/nvim-comment'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'phaazon/hop.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    
    -- auto-completion
    use 'hrsh7th/vim-vsnip'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    -- use 'williamboman/nvim-lsp-installer'
    -- use 'onsails/lspkind-nvim'
    
    use {'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} }}
    -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use {'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}

end)

