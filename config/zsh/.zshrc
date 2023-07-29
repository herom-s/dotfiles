# Created by newuser for 5.8
autoload -U colors && colors

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:*' formats "(%{$fg[white]%}%b%{$reset_color%})"

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}\$vcs_info_msg_0_$%b%(?..[%?] )%# "

setopt interactive_comments
stty stop undef

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#Aliases for zsh
source ~/.config/zsh/.zsh_aliases

# Auto-suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
