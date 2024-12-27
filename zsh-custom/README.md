# INSTALL

```sh
ZSH="$HOME/.config/kenkei/zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
```

```sh
git clone --single-branch --depth 1 https://github.com/TheKenkei/custom-ohmyzsh.git $ZSH_CUSTOM/kenkei;
```

```sh
echo "source $ZSH_CUSTOM/kenkei/custom.zsh" >> $ZSH_CUSTOM/example.zsh;
```

#### POWERLEVEL10K

```sh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### zsh-syntax-highlighting

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### EXPORT PLUGINS

```sh
 plugins=( git sudo z brew npm docker docker-compose gh zsh-syntax-highlighting web-search dirhistory)
```

#### ADD TMUX

```sh
 ln -s ~/.config/kenkei/zsh/custom/kenkei/tmux/tmux.conf ~/.tmux.conf
```

#### OTHER

```sh 
brew install bat

```

# DONE

```sh
source ~/.zshrc
```
