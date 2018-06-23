#!/bin/bash

set -ex

echo 'Build docker image'

APP_NAME=groclist
DOCKER_REPO=personal
VERSION=${BUILDKITE_BUILD_NUMBER}

cd $(dirname $0)/../src

docker build -t $DOCKER_REPO/$APP_NAME:${VERSION} .