#!/usr/bin/env bash

cd $(dirname $0)
set -x

source "current/releases"
source ../rubies

RELEASE="${LTS_RELEASES[-1]}"

if [ "$#" -eq 1 ]; then
    RUBIES=( "${1}" )
else
    TAG="latest"
    docker tag "${IMAGE_TAG}:{$RELEASE}" "${IMAGE_TAG}:${TAG}"
    docker push "${IMAGE_TAG}:${TAG}"
fi;

for RUBY in "${RUBIES[@]}"; do
    TAG="${RUBY}"
    echo "> Pushing ${TAG}"
    docker tag "${IMAGE_TAG}:{$RELEASE}-${TAG}" "${IMAGE_TAG}:${TAG}"
    docker push "${IMAGE_TAG}:${TAG}"
done;
