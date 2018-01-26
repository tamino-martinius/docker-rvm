#!/usr/bin/env bash

cd $(dirname $0)
set -x

STAGE="current"

if [ "$#" -gt 0 ]; then
    STAGE="${1}"
fi;

source "${STAGE}/releases"

if [ "$#" -eq 2 ]; then
    RELEASES=( "${2}" )
fi;

for RELEASE in "${RELEASES[@]}"; do
    TAG="${RELEASE}"
    echo "> Pushing ${TAG}"
    docker push "${IMAGE_TAG}:${TAG}"
done;
