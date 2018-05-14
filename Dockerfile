FROM node:alpine
MAINTAINER iaroki
RUN npm install electron-packager -g
USER node
ENV DEEZDIR=/home/node/deezerjs
WORKDIR $DEEZDIR
CMD ["build.sh"]
