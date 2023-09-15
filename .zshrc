# created by zap installer
[ -f "${xdg_data_home:-$home/.local/share}/zap/zap.zsh" ] && source "${xdg_data_home:-$home/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"

# load and initialise completion system
autoload -uz compinit
compinit

export path="/users/haoran/.local/bin:$path"

# export https_proxy=https://127.0.0.1:1086 http_proxy=http://127.0.0.1:1086 all_proxy=socks5://127.0.0.1:1086
# >>> conda initialize >>>
# !! contents within this block are managed by 'conda init' !!
__conda_setup="$('/users/haoran/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/users/haoran/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/users/haoran/miniconda3/etc/profile.d/conda.sh"
    else
        export path="/users/haoran/miniconda3/bin:$path"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# alias python=/usr/bin/python3
# alias pip=/usr/bin/pip3
alias vim=nvim
alias la="ls -a"
alias ll="ls -la"
# alias nvide="neovide"
