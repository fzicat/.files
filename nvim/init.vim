let mapleader = " "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')
"
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
"Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

command Config :e $MYVIMRC
colorscheme gruvbox

source ~/.config/nvim/config/sets.vim
source ~/.config/nvim/config/keymaps.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/lsp.vim
source ~/.config/nvim/config/startify.vim
