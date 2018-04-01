open -a XQuartz
xhost +$(hostname)

docker run -d --rm \
  -e DISPLAY=$(hostname):0 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME:/home/$USER \
  --workdir=/home/$USER \
  labelimg
