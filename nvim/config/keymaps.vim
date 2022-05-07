" directions
" noremap u k
" noremap e j
" noremap n h
" noremap i l

" pageup/pagedowd
" nnoremap <C-u> <C-b>
" nnoremap <C-e> <C-f>

" buffers
nnoremap <C-i> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-c> :bdelete<CR>

" end of word
" nnoremap j e

" k/K to find next/previous
" nnoremap k n
" nnoremap K N

" insert
" nnoremap h i

" undo
" nnoremap l u

" escape
inoremap mg <Esc>
inoremap gm <Esc>

" save & exit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>l :set background=light<CR>
nnoremap <leader>d :set background=dark<CR>
