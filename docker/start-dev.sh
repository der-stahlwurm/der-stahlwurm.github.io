#!/bin/bash

./docker/stop.sh

# wir brauchen "force_polling" weil das ansonsten mit unseren Boot2Docker/NFS Mounts lokal nicht funktioniert
# jekyll/pages laeuft gerade noch nicht mit -d
# @see https://github.com/jekyll/docker-jekyll/issues/19

docker run -d \
    --name jekyll-pages \
    --volume=$(pwd):/srv/jekyll \
    -p 4000:4000 \
    jekyll/jekyll:pages \
    jekyll s --watch --drafts --trace --force_polling --config _config.yml,_config_dev.yml "$@"
