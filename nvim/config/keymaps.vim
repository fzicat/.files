" buffers
nnoremap <C-i> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-c> :bdelete<CR>

" save & exit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>l :set background=light<CR>
nnoremap <leader>d :set background=dark<CR>

function! ColemakMapping()
    echo "Colemak DHm Activated!"
    noremap j e
    noremap l i
    noremap J E
    noremap L I

    noremap m h
    noremap n j
    noremap e k
    noremap i l
    noremap N L
    noremap E H
    noremap I J
    
    noremap k m
    noremap h N
    noremap , n
    noremap H /
endfunction

function! RemoveColemakMapping()
    echo "Colemak DHm Deactivated!"
    unmap j
    unmap l
    unmap J
    unmap L

    unmap m
    unmap n
    unmap e
    unmap i
    unmap N
    unmap E
    unmap I
    
    unmap k
    unmap h
    unmap ,
    unmap H
endfunction

nnoremap <leader>k :call ColemakMapping()<CR>
nnoremap <leader>v :call RemoveColemakMapping()<CR>
:call ColemakMapping()

