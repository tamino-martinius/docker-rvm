#!/usr/bin/env bash

set -x

source ./releases

mkdir -p ../.build

if [ "$#" -eq 1 ]; then
    RELEASES=( "${1}" )
fi;

for RELEASE in "${RELEASES[@]}"; do
    TAG="${RELEASE}"
    DOCKERFILE="../.build/dockerfile-${TAG}"
    eval "cat > $DOCKERFILE <<EOF
$(<dockerfile-release)
EOF" 2> /dev/null

    echo "> Making ${TAG}"

    # docker build --tag="${TAG}" --file="${DOCKERFILE}" ../.build

    # if [ -f "${DOCKERFILE}" ]; then
    #     rm -f $DOCKERFILE
    # fi;
done;
