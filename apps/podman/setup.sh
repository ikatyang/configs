#!/usr/bin/env bash

cd $(dirname $0)

brew install podman
ln -sf "$(which podman)" "$(dirname $(which podman))/docker"
podman machine init --cpus=4 --disk-size=60 --memory=6144
podman machine start
podman machine ssh podman-machine-default sudo sysctl net.ipv4.ip_unprivileged_port_start=80
