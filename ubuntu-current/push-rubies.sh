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
        echo "> Pushing ${TAG}"
        docker push ${IMAGE_TAG}:${TAG}
    done;
done;
