#!/usr/bin/env bash

cd $(dirname $0)
set -x

STAGE="current"

if [ "$#" -gt 0 ]; then
    STAGE="${1}"
fi;

source "${STAGE}/releases"
source ../rubies

if [ "$#" -eq 2 ]; then
    RUBIES=( "${2}" )
fi;

if [ "$#" -eq 3 ]; then
    RELEASES=( "${2}" )
    RUBIES=( "${3}" )
fi;

for RELEASE in "${RELEASES[@]}"; do
    for RUBY in "${RUBIES[@]}"; do
        TAG="${RUBY}-${RELEASE}"
        echo "> Pushing ${TAG}"
        docker push ${IMAGE_TAG}:${TAG}
    done;
done;
