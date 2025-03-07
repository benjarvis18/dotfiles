#!/bin/bash

# Install Oh My Posh
mkdir -p ~/.local/
mkdir -p ~/.local/bin
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/.local/bin

# Download fonts
oh-my-posh font install CascadiaCode

# Download themes
mkdir -p ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
rm ~/.poshthemes/themes.zip
chmod u+rw ~/.poshthemes/*.json

# Update .bashrc to initialize Oh My Posh
echo 'eval "$(oh-my-posh init bash --config ~/.poshthemes/paradox.omp.json)"' >> ~/.bashrc