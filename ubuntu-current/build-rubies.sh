#!/usr/bin/env bash

set -x

source ./releases
source ../rubies

mkdir -p ../.build

if [ "$#" -eq 1 ]; then
    RUBIES=( "${1}" )
fi;

if [ "$#" -eq 2 ]; then
    RELEASES=( "${1}" )
    RUBIES=( "${2}" )
fi;

for RELEASE in "${RELEASES[@]}"; do
    for RUBY in "${RUBIES[@]}"; do
        TAG="${RUBY}-${RELEASE}"
        DOCKERFILE="../.build/dockerfile-${TAG}"
        eval "cat > $DOCKERFILE <<EOF
$(<dockerfile-ruby)
EOF" 2> /dev/null

        echo "> Making ${TAG}"

        # docker build --tag="${TAG}" --file="${DOCKERFILE}" ../.build

        # if [ -f "${DOCKERFILE}" ]; then
        #     rm -f $DOCKERFILE
        # fi;
    done;
done;
