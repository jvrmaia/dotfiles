# PYTHON CONFIGURATION #######################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# GOLANG CONFIGURATION #######################
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# NODE CONFIGURATION #########################
export NVM_NODEJS_ORG_MIRROR=http://nodejs.org/dist
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# RUST CONFIGURATION #########################
export PATH="$HOME/.cargo/bin:$PATH"

# DART #######################################
if [[ -f ~/.dvm/scripts/dvm ]]; then
  . ~/.dvm/scripts/dvm
fi

# FLUTTER ####################################
export PATH="$PATH":"$HOME/.pub-cache/bin"

# PASSWORD GENERATOR #########################
function pass_gen() {
  openssl rand -base64 $1
}

# MAN WITH COLORS ############################
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# AUTOENV ####################################
source $HOME/.autoenv/activate.sh

# SDK MAN ####################################
export SDKMAN_DIR="/home/jvrmaia/.sdkman"
[[ -s "/home/jvrmaia/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jvrmaia/.sdkman/bin/sdkman-init.sh"

# DART #######################################
export PATH="$PATH:/usr/lib/dart/bin"

# VAGRANT CONFIGURATION ######################
export VAGRANT_DEFAULT_PROVIDER=libvirt

# PACKER ENV MANAGER #########################
export PATH="${HOME}/.pkenv/bin:$PATH"

# TERRAFORM ENV MANAGER ######################
export PATH="$HOME/.tfenv/bin:$PATH"

# ALIAS ######################################
alias ls="ls --color -F"
alias update_system="sudo apt-get update && sudo apt-get -y dist-upgrade"
alias update_joplin="wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash"
alias update_calibre="sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin"
alias ctrlc="xclip -i -sel clipboard"
alias ctrlv="xclip -o -sel clipboard"
alias wheather="curl -4 http://wttr.in/Vila_Velha"

# SHELL CONFIGURATION ########################
export SCALA_HOME=~/.svm/current/rt
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$PATH:$HOME/.bin
export EDITOR='vim'
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export PS1="\[\e[35;1m\]=> \[\e[31;1m\]\w\n\[\e[0m\]\[\e[35;1m\]\\$ \[\e[0m\]"

export GPG_TTY=$(tty)
