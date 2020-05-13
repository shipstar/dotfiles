# if you have git alias to hub, zplug fails
# see https://github.com/zplug/zplug/issues/448
unalias git

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug shipstar/hyperzsh, use:hyperzsh.zsh-theme, as:theme
zplug zsh-users/zsh-syntax-highlighting, defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
