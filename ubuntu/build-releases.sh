#!/usr/bin/env bash

cd $(dirname $0)
set -x

STAGE="current"
BUILD_DIR="../.build"

mkdir -p "${BUILD_DIR}"

if [ "$#" -gt 0 ]; then
    STAGE="${1}"
fi;

source "${STAGE}/releases"

if [ "$#" -eq 2 ]; then
    RELEASES=( "${2}" )
fi;

for RELEASE in "${RELEASES[@]}"; do
    TAG="${RELEASE}"
    DOCKERFILE="${BUILD_DIR}/${TAG}.dockerfile"
    eval "cat > $DOCKERFILE <<EOF"$'\n'$"$(<${STAGE}/release.dockerfile)"$'\n'$"EOF" 2> /dev/null

    echo "> Making ${TAG}"

    docker build --tag="${TAG}" --file="${DOCKERFILE}" "${BUILD_DIR}"

    if [ -f "${DOCKERFILE}" ]; then
        rm -f $DOCKERFILE
    fi;
done;
