#cp .vimrc
cp .vimrc ~/.vimrc

#install vim-plug
cp plug.vim ~/.vim/autoload/plug.vim

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# install
sudo apt-get install silversearcher-ag
