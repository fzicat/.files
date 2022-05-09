set number
" set relativenumber
set noerrorbells
set hidden
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
"set clipboard=unnamedplus
"set directory=$HOME

""" TERMINAL COLORS
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

""" LIGHTLINE et LIGHTLINE-BUFFERLINE
set noshowmode
set laststatus=2
set showtabline=2
let g:lightline = {
    \ 'colorscheme': 'powerline',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'  ], [ 'readonly', 'filename', 'modified'  ]  ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers']  ],
    \   'right': [ ['close']  ]
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ }
    \ }

""""" FINDING FILES
set path+=**
set wildmenu 
