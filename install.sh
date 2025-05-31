#!/bin/bash

sudo apt update

sudo apt install stow -y

sudo apt install zsh -y

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# Set zsh as the default shell
sudo chsh -s $(which zsh)

export PROFILE=~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo apt install tmux -y

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Install plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh

./install-nerd-font-symbols.sh

sudo apt install fzf -y

# Neovim
NEOVIM_VERSION="0.11.1"
curl -LO https://github.com/neovim/neovim/releases/download/v${NEOVIM_VERSION}/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm ./nvim-linux-x86_64.tar.gz
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

git clone https://github.com/Nicklason/nvim-config.git ~/.config/nvim

# nvm/node/npm/pnpm
NVM_VERSION=0.40.3
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install --lts
nvm use --lts

curl -fsSL https://get.pnpm.io/install.sh | sh -

pnpm i -g npm-check-updates@18

# dotnet
curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --channel 9.0
export PATH="$HOME/.dotnet:$PATH"
