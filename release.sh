#!/bin/bash

set -euf -o pipefail

VERSION="19.03.12"

# For docker
docker pull srikalyan/docker:$VERSION
docker tag srikalyan/docker:$VERSION srikalyan/docker:stable
docker push srikalyan/docker:stable

# For dind
docker pull srikalyan/docker:$VERSION-dind
docker tag srikalyan/docker:$VERSION-dind srikalyan/docker:stable-dind
docker push srikalyan/docker:stable-dind

