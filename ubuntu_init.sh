#/usr/bin/env sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install gcc git wget tree vim curl zsh zip tmux -y
alias vi=vim
mkdir -p ~/.vim/bundle
mkdir -p ~/mygit/
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/gangbo/vim_open_pm.git ~/mygit/vim_open_pm
ln -sf ~/mygit/vim_open_pm/vimrc ~/.vimrc
vim +PluginInstall +qall
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc


chsh -s /bin/zsh

