#!/bin/bash

docker build -t deezerjs-build .
docker run -it --rm --name=deezerjs-build -v $PWD:/home/node/deezerjs deezerjs-build
docker rmi deezerjs-build
tar cvzf deezerjs-linux-x64.tar.gz deezerjs-linux-x64
rm -rf deezerjs-linux-x64
