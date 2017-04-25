# tmux

## Quick Installation

```sh
# install reattch-to-user-namespace for tmux copying
brew install reattach-to-user-namespace

# retain git repository for version control
git clone https://github.com/ikatyang/tmux-configs ~/Documents/Github/tmux-configs

# link configs
ln -sf ~/Documents/Github/tmux-configs/.tmux.conf ~
ln -sf ~/Documents/Github/tmux-configs/.tmux.conf.local ~
```

## Manual Installation

See also [tmux-configs](https://github.com/ikatyang/tmux-configs/)

## Cheatsheet for .tmux

**NOTE**: `prefix` is set as <code>`</code>
**NOTE**: cannot copy mouse-selected in mouse mode

| Type    | Command        | Description                      |
| ------- | -------------- | -------------------------------- |
| session | `tmux`         | create a session                 |
| session | `tmux a`       | attach to a session              |
| session | `prefix d`     | detach from a session            |
| session | `prefix (`     | go to previous session           |
| session | `prefix )`     | go to next session               |
| session | `prefix s`     | go to the last used session      |
| session | `prefix s`     | choose a session                 |
| session | `prefix $`     | rename the current session       |
| session | `killall tmux` | kill all sessions                |
| window  | `prefix c`     | create a window                  |
| window  | `prefix w`     | choose a window                  |
| window  | `prefix num`   | go to window [num]               |
| window  | `prefix Tab`   | go to the last used window       |
| window  | `prefix ,`     | rename the current window        |
| window  | `prefix &`     | kill the current window          |
| pane    | `prefix q`     | choose a pane                    |
| pane    | `prefix x`     | kill the current pane            |
| pane    | `prefix "`     | split vertically (top/bottom)    |
| pane    | `prefix %`     | split horizontally (left/right)  |
| pane    | `prefix arrow` | go to pane on the direction      |
| pane    | `prefix o`     | go to the next pane (cyclically) |
| pane    | `prefix ;`     | go to the last used pane         |
| mode    | `prefix m`     | switch mouse mode on/off         |
| other   | `prefix ?`     | display keyboard shortcuts       |
