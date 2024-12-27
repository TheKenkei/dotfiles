
#!/bin/bash 

#ZSH 
ln -s  $HOME~/.dotfiles/zshrc $HOME/.zshrc
echo "source $ZSH_CUSTOM/kenkei/custom.zsh" >> $ZSH_CUSTOM/example.zsh;


#TMUX
ln -s  $HOME~/.dotfiles/tmux.conf $HOME/.tmux.conf



#brew 
echo " install brew "

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


echo "install brew packages..." 
brew install nvim lazygit ripgrep bat eza fzf fd 
