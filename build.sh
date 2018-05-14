#!/bin/bash

docker build -t deezerjs-build .
docker run -it --rm --name=deezerjs-build -v $PWD:/home/node/deezerjs deezerjs-build
docker rmi deezerjs-build
