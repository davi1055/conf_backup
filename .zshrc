ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="dst"

#  plugins
plugins=(git
    sudo
    zsh-256color
    zsh-autosuggestions
    zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh  #  path to zsh
# source /usr/share/fzf/completion.zsh  #  fzf plugins
source ~/.oh-my-zsh/plugins/fzf-tab/fzf-tab.plugin.zsh #  fzf-tab
source ~/.oh-my-zsh/plugins/fzf-tab/fzf-tab.zsh

export FZF_DEFAULT_OPTS="--color=fg:-1,bg:-1,hl:3,fg+:0,bg+:48,hl+:1,info:6,prompt:3,pointer:5"
export FZF_PREVIEW_OPTS="--border --color=bg+:48,bg:-1,hl:3,fg:7"

#  fzf
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh 

#  neofetch
neofetch
#  proxy
#export http_proxy=127.0.0.1:7890
#export https_proxy=127.0.0.1:7890


#  alias
alias vim="nvim"
alias fzf="fzf --preview 'bat --color=always {}'"
alias top="btop"

# thefuck
eval $(thefuck --alias)


#  conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


