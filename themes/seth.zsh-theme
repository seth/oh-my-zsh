# Found on the ZshWiki
#  http://zshwiki.org/home/config/prompt
#

# #--- Git prompt setup
# autoload -Uz vcs_info

# autoload colors
# colors

# precmd() {
#   psvar=()
#   vcs_info
#   [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
# }

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}git:("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")*"
ZSH_THEME_GIT_PROMPT_CLEAN=")"

PROMPT='[%m] %2~: '
##RPROMPT="%(1v.%{$fg[yellow]%}%1v%f.)%{$reset_color%}"
RPROMPT='$(git_prompt_info)'
