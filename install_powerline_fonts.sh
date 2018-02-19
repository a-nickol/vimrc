#!/bin/sh
echo "Installing powerline fonts to ~/.powerline_fonts..."
cd ~/
git clone https://github.com/powerline/fonts .powerline_fonts
cd .powerline_fonts
./install.sh

