# Zsh

- set `zsh` as default login shell

  ```sh
  chsh -s /bin/zsh
  ```

  NOTE: need to restart to apply changes

- Install [`oh-my-zsh`](https://github.com/robbyrussell/oh-my-zsh)

  ```sh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  ```

- Setup [pure](https://github.com/sindresorhus/pure)

  - Set `ZSH_THEME=""` in your `.zshrc` to disable `oh-my-zsh` themes.
  - Install pure

    ```sh
    npm install -g pure-prompt
    ```

  - Initialize the prompt system (if not so already) and choose `pure`:

    ```sh
    # .zshrc
    autoload -U promptinit; promptinit
    prompt pure
    ```

    NOTE: `oh-my-zsh` overrides the prompt so Pure must be activated after `source $ZSH/oh-my-zsh.sh`.

- Setup [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/)

  - install zsh-syntax-highlighting

    ```sh
    brew install zsh-syntax-highlighting
    ```

  - activate syntax highlighting

    ```sh
    # add the following at the end of .zshrc
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
    ```

- Setup [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

  - install zsh-autosuggestions

    ```sh
    brew install zsh-autosuggestions
    ```

  - activate syntax highlighting

    ```sh
    # add the following at the end of .zshrc
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ```
