set nocompatible
filetype off
colorscheme smyck
set number
set cursorline
"set cursorcolumn
set expandtab
set shiftwidth=2
set softtabstop=2

" Cursor line highlight
"hi CursorLine   cterm=NONE ctermbg=black guibg=black

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on

"EasyMotion
map s <Plug>(easymotion-prefix)
