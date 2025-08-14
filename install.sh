
#!/bin/bash 

#brew 
echo " install brew "

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> $HOME/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ${HOME}/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo apt-get install build-essential

echo "install brew packages..." 
brew install gcc nvim lazygit ripgrep bat eza fzf fd  python-setuptools yazi zoxide xclip  yazi ffmpeg sevenzip jq poppler fd ripgrep fzf zoxide imagemagick 


#ZSH 
echo "install zsh packages..." 

echo "install fzf-zsh-plugin" 
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

echo "install zsh-syntax-highlighting" 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "install zsh-autosuggestions" 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



echo "source ~/.dotfiles/zshrc" >> $HOME/.zshrc


#TMUX
ln -s  $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf
echo "install tpm plugin" 
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -s  $HOME/.dotfiles/yazi $HOME/.config/yazi



