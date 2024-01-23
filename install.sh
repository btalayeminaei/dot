/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval $(/opt/homebrew/bin/brew shellenv)
brew update
brew upgrade

# consider using brew bundle
# brew install git
# brew install neovim
# brew install stow
# brew install libpq
#
# brew install rbenv
# eval "$(rbenv init - zsh)"
# rbenv install 3.2.2
# rbenv global 3.2.2
#
# brew install nodenv
# eval "$(nodenv init -)"
# nodenv install 20.10.0
# nodenv global 20.10.0
#
# brew install pyenv
# eval "$(pyenv init -)"
#
# brew install direnv
#
# brew install cask
# brew install --cask iterm2
# brew install --cask google-chrome
# brew install --cask rectangle
# brew install --cask docker
#
# brew tap heroku/brew
# brew install heroku


stow zsh
stow nvim
stow stuff

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
