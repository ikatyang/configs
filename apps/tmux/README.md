## Cheatsheet for tmux

| Type    | Command        | Description                      |
| ------- | -------------- | -------------------------------- |
| session | `tmux`         | create a session                 |
| session | `tmux a`       | attach to a session              |
| session | `prefix d`     | detach from a session            |
| session | `prefix (`     | go to previous session           |
| session | `prefix )`     | go to next session               |
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
| other   | `prefix m`     | switch mouse mode on/off         |
| other   | `prefix ?`     | display keyboard shortcuts       |
