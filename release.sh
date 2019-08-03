#!/bin/bash

set -euf -o pipefail

set +u
VERSION="$1"
set -u

if [[ -z "$VERSION" ]]; 
then
    echo "Run this script by providing a version number e.g., ./release.sh 19.03.0"
    exit -1
fi

# For docker
docker pull srikalyan/docker:$VERSION
docker tag srikalyan/docker:$VERSION srikalyan/docker:stable
docker push srikalyan/docker:stable

# For dind
docker pull srikalyan/docker:$VERSION-dind
docker tag srikalyan/docker:$VERSION-dind srikalyan/docker:stable-dind
docker push srikalyan/docker:stable-dind

