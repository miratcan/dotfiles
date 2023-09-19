# Install XCode Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Nerd Fonts
brew tap homebrew/cask-fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

# Install Necessarry Homebrew Packages for Development
brew install fd ripgrep opera iterm2 docker docker-compose btop nvm pyenv pipx zsh zsh-completions wget curl tmux ranger

# Install Kaydet
pip3 install kaydet

# Install NeoVim Requirements
pip3 install neovim
npm i -g neovim
