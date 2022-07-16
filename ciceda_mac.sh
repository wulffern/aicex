#!/usr/bin/env bash
set -euo pipefail

docker run --rm -it -p 2022:22  -v "`pwd`:/home/ciceda/aicex" -i wulffern/ciceda:ubuntu_latest bash -login
