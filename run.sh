#!/usr/bin/env bash
set -euo pipefail

NAME="cpacheck"

DIR="$(pwd)"
if [ $# -eq 1 ]; then
	DIR=$(realpath "$1")
fi

docker run --rm -ti -v "$DIR":/workdir -h $NAME jtulak/$NAME /bin/bash
