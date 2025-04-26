#!/usr/bin/env bash

set -euo pipefail

colima start --cpu 4 --memory 8 --disk 64 --vm-type vz --vz-rosetta
