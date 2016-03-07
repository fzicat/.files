mkdir -p ~/.vim/bundle && cd ~/.vim/bundle

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle tpope vim-pathogen
get_bundle pangloss vim-javascript
get_bundle easymotion vim-easymotion

#get_bundle bling vim-airline
#get_bundle duff vim-bufonly
#get_bundle tpope vim-abolish
#get_bundle tpope vim-bundler
#get_bundle tpope vim-classpath
#get_bundle tpope vim-commentary
#get_bundle tpope vim-endwise
#get_bundle tpope vim-eunuch
#get_bundle tpope vim-fugitive
#get_bundle tpope vim-git
#get_bundle tpope vim-markdown
#get_bundle tpope vim-ragtag
#get_bundle tpope vim-rails
#get_bundle tpope vim-bundler
#get_bundle tpope vim-rake
#get_bundle tpope vim-repeat
#get_bundle tpope vim-sensible
#get_bundle tpope vim-speeddating
#get_bundle tpope vim-surround
#get_bundle tpope vim-unimpaired
#get_bundle vim-ruby vim-ruby
#get_bundle mattn emmet-vim
#get_bundle mxw vim-jsx
#get_bundle othree yajs.vim
#get_bundle jeffkreeftmeijer vim-numbertoggle
#get_bundle terryma vim-multiple-cursors
#get_bundle kien ctrlp.vim
#get_bundle tpope vim-vinegar

#vim -c 'call pathogen#helptags()|q'
