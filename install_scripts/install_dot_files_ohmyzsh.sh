# Clone OH MY ZSH and dotfiles to home
# git clone have problems in cygwin see http://stackoverflow.com/questions/9864728/how-to-get-git-to-clone-into-current-directory
echo "\033[0;33mInstalling oh-my-zsh and lacosox dotfiles (apt-get similar).\033[0m"
rm -rf ~/.oh-my-zsh
rm -rf ~/.lacosox_dotfiles
cd ~/
git clone https://github.com/robbyrussell/oh-my-zsh.git
git clone https://github.com/knxroot/dotfiles.git
mv oh-my-zsh .oh-my-zsh
mv dotfiles .lacosox_dotfiles