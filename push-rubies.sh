#!/usr/bin/env bash

set -x

source ./rubies

if [ "$#" -eq 1 ]; then
    RUBIES=( "${1}" )
fi;

for RUBY in "${RUBIES[@]}"; do
    echo "> Pushing ${IMAGE_TAG}:utopic-${RUBY}"
    docker push ${IMAGE_TAG}:utopic-${RUBY}
done;
