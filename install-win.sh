#!/bin/bash
set -e

# Installing apt-cyg (a command-line software installer for Cygwin, similar to apt-get)
echo "\033[0;33mInstalling apt-cyg (apt-get similar).\033[0m"
wget --no-check-certificate "https://apt-cyg.googlecode.com/svn/trunk/apt-cyg" -O /bin/apt-cyg
chmod +x /bin/apt-cyg
/bin/apt-cyg install zsh vim curl git git-completion git-gui gitk rsync

source ~/.lacosox_dotfiles/install_scripts/install_dot_files_ohmyzsh.sh

# Create initial /etc/zshenv
[[ ! -e /etc/zshenv ]] && echo export PATH=/usr/bin:\$PATH > /etc/zshenv
rsync -av ~/.lacosox_dotfiles/home/ ~/

# For use ssh
mkpasswd -c > /etc/passwd
mkgroup -c > /etc/group
# setting up zsh as default
sed -i "s/$USER\:\/bin\/bash/$USER\:\/bin\/zsh/g" /etc/passwd

# et voila just start it
/usr/bin/env zsh