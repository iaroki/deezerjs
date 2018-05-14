FROM node:alpine
MAINTAINER iaroki
RUN npm install electron-packager -g
RUN echo "npm install; electron-packager . deezerjs --platform=linux --arch=x64" > /bin/deezer-build
USER node
ENV DEEZDIR=/home/node/deezerjs
WORKDIR $DEEZDIR
ENTRYPOINT ["sh", "/bin/deezer-build"]
