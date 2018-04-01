# GUI Apps from Docker Container

## Launch X11 server

```sh
open -a XQuartz
xhost +$(hostname)
```

**NOTE**: You needs to set `Preferences -> Security -> [x] Allow connections from network clients` at first time and restart X11.

## Docker settings

```sh
docker run -d --rm \
  -e DISPLAY=$(hostname):0 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  <image>
```
