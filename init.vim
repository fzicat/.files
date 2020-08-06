set nocompatible
syntax on
filetype plugin on

""" FZ
set number
set relativenumber
set noerrorbells
set hidden
set nobackup
set nowritebackup
set directory=$HOME/.vim/swapfiles//

let mapleader = " "
command S Startify

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <silent> <leader>+ :vertical resize +3<CR>
nnoremap <silent> <leader>- :vertical resize -3<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

""" FINDING FILES
set path+=**
set wildmenu 

""" SNEAK
let g:sneak#label = 1
let g:sneak#s_next = 1

""" NETRW
let g:netrw_liststyle = 3
let g:netrw_banner = 0
"let g:netrw_winsize = 10
"let g:netrw_browse_split = 4
"let g:netrw_altv=1

""" TAB
:set tabstop=3
:set shiftwidth=3
:set noexpandtab

" TERMINAL COLORS
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" FZF
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>n :Lines<CR>
nnoremap <silent> <Leader><space> :Buffers<CR>
nnoremap <silent> <Leader><Enter> :Buffers<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
"
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-startify'
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox
set background=dark

" Config files
source ~/.vim/config/coc.vim
source ~/.vim/config/startify.vim
source ~/.vim/config/lightline.vim
