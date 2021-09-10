#!/usr/bin/env bash

set -e

docker build -t proxy_homework .
docker run -it -d --name proxy_homework -p 8088:80 proxy_homework

echo "Enter 'nginx' into bash terminal to start nginx then enter 'exit' next to leave bash"
#sudo mkdir -p /data/nginx/cache
docker exec -it proxy_homework /bin/bash

echo "Nginx is running, gifs should now be viewable on port 8088"

#read -p "Enter 'exit' into bash terminal to leave bash terminal"




#putting nginx into the terminal runs it.



#docker run -it -d --name proxy_homework -p 8088:80 --link=infra.hw.storj.io --link=infra.hw.storj.io/images/swordfish.gif proxy_homework
