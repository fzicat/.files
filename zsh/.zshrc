# Colors and prompt
autoload -U colors && colors

# PS1='\[\033[38;2;40;40;40m\]\[\033[48;2;214;93;14m\] [\u] \[\033[38;2;40;40;40m\]\[\033[48;2;131;165;152m\] \w \[\033[38;2;40;40;40m\]\[\033[48;2;250;189;47m\]$(__git_ps1 " [%s] ")\[\033[00m\] \n$ '
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
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
compinit
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
