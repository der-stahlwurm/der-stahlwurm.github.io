#!/bin/bash
# offizieller Aufruf:
# https://github.com/jekyll/docker-jekyll
#docker run -d --rm --label=jekyll --label=stable --volume=$(pwd):/srv/jekyll    -p 4000:4000 jekyll/stable jekyll s

# wir brauchen "force_polling" weil das ansonsten mit unseren Boot2Docker/NFS Mounts lokal nicht funktioniert
# jekyll/pages laeuft gerade noch nicht mit -d
# @see https://github.com/jekyll/docker-jekyll/issues/19

./docker/stop.sh

docker run -d \
    --name jekyll-pages \
    --volume=$(pwd):/srv/jekyll \
    -p 4000:4000 \
    jekyll/jekyll:pages jekyll s --watch --force_polling "$@"
