# Tema para zsh con un smile que depende del estado del retorno de carro
# Tested in Fedora 17

local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}✗%{$reset_color%})"
local user="%{$fg[cyan]%}%n%{$reset_color%}"
local host="%{$fg[cyan]%}@%m%{$reset_color%}"
local pwd="%{$fg[yellow]%}%~%{$reset_color%}"

#PROMPT='${user}${host} ${pwd}
PROMPT='${pwd}
${smiley}  %{$reset_color%}'

RPROMPT='%{$fg[white]%} $($LACOSOX_DOTFILES/ext/git-extras/git-cwd-info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
