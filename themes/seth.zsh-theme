# Found on the ZshWiki
#  http://zshwiki.org/home/config/prompt
#

#--- Git prompt setup
autoload -Uz vcs_info

autoload colors
colors

precmd() {
  psvar=()
  vcs_info
  [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}

PROMPT='[%m] %2~: '
RPROMPT="%(1v.%{$fg[yellow]%}%1v%f.)%{$reset_color%}"
