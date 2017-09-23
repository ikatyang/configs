# Zsh

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
