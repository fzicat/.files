let g:startify_bookmarks = [
    \ { 'i': '~/.config/nvim/init.vim'  },
    \ { 'z': '~/.config/zsh/.zshrc'  },
    \ { 'p': '~/.config/shell/profile'  },
    \ { 'b': '~/.files/.bashrc_custom'  },
    \ '~/bzerp',
    \ '~/tradelog',
    \ '~/hamm',
    \ '/mnt/c/Users/fzicat/Google Drive/',
    \ '/mnt/c/Users/fzicat/OneDrive - BZ inc/',
    \ ]

let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0

command S Startify

