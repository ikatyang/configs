# set zsh as default login shell
# chsh -s /bin/zsh # already included in oh-my-zsh

# install oh-my-zsh https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install pure https://github.com/sindresorhus/pure
yarn global add pure-prompt
sed -i '' -e 's/^ZSH_THEME=/ZSH_THEME="" # /' $SHELL_RC

# install zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting/
brew install zsh-syntax-highlighting

# install zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
brew install zsh-autosuggestions

echo "source $APP_DIRNAME/config.sh" >> $SHELL_RC
