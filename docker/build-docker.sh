#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-xebecproject/xebecd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/xebecd docker/bin/
cp $BUILD_DIR/src/xebec-cli docker/bin/
cp $BUILD_DIR/src/xebec-tx docker/bin/
strip docker/bin/xebecd
strip docker/bin/xebec-cli
strip docker/bin/xebec-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
