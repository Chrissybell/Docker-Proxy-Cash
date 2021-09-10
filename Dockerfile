FROM ubuntu
#FROM nginx

RUN apt-get update && apt-get install -y nginx-full
RUN mkdir -p /data/nginx/cache

#RUN rm /etc/nginx/conf.d/default.conf
#COPY files/proxy.conf /etc/nginx/sites-available/proxy

COPY files/proxy.conf /etc/nginx/sites-enabled/proxy

#COPY files/proxy.conf /etc/nginx/conf.d/default

EXPOSE 80
