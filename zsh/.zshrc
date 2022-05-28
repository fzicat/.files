# Colors and prompt
autoload -U colors && colors

# PROMPT
# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '%F{black}%K{yellow} '$branch' %f%k'
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# Config for prompt. PS1 synonym.
PROMPT='%F{black}%K{red} [%n] %K{cyan} %~ %f%k$(git_branch_name) '
RPROMPT='[%F{yellow}%T%f]'

HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000

# vi mode
bindkey -v

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache/zsh/.zcompdump
_comp_options+=(globdots)     # Include hidden files.

# OS=$(awk '/^ID=/' /etc/os-release | sed 's/ID=//')
# if [ $OS == 'arch' ]; then
# 	source /usr/share/git/completion/git-completion.bash
# 	source /usr/share/git/completion/git-prompt.sh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
# fi

# path
PATH=~/.local/bin/:$PATH

unsetopt BEEP

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shell/shortcutrc"  ] && source "$HOME/.config/shell/shortcutrc"
[ -f "$HOME/.config/shell/aliasrc"  ] && source "$HOME/.config/shell/aliasrc"

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# lfcd 
LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^o' 'lfcd\n'

# echo "ZSHRC-CONFIG"
