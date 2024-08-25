DISABLE_MAGIC_FUNCTIONS=true
export ZSH=$HOME/.oh-my-zsh
export DOTFILES=$HOME/.dot
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

PERSONAL=$XDG_CONFIG_HOME/personal
for i in `find -sL $PERSONAL`; do
    source $i
done

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/beshad.talayeminaei/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/beshad.talayeminaei/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/beshad.talayeminaei/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/beshad.talayeminaei/google-cloud-sdk/completion.zsh.inc'; fi

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"
# rbenv
eval "$(rbenv init - zsh)"
# nodenv
eval "$(nodenv init -)"
# pyenv
eval "$(pyenv init -)"
# direnv
eval "$(direnv hook zsh)"
