" FZF
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>u :Lines<CR>
nnoremap <silent> <Leader><space> :Buffers<CR>
nnoremap <silent> <Leader><Enter> :Buffers<CR>
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8  }  }
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_OPTS='--bind ctrl-k:down,ctrl-i:up'
