#!/usr/bin/env bash

set -euo pipefail

podman machine ssh $@ "echo net.ipv4.ip_unprivileged_port_start=0 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p"
