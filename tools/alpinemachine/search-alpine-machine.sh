#!/bin/zsh

# search-alpine-machine allows us to open up an alpine machine to search
# for specific packages on any OS or platform w/o having to use the web

docker build -t alpine-machine -f Dockerfile.alpinemachine .
docker run --name apk-search alpine-machine &
docker exec apk-search apk-update
docker exec -it apk-search zsh
