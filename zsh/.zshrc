# Colors and prompt
autoload -U colors && colors

PS1='%F{black}%K{red} [%n] %K{cyan} %~ %f%k $ '
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
