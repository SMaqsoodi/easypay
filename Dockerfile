FROM ubuntu:18.04

MAINTAINER SAEED MAQSOODI

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf
ENTRYPOINT ["nginx"]

ADD default /etc/nginx/sites-available/default

ADD src .

EXPOSE 80

CMD ["nginx"]

#VOLUME 
#	/var/cache/nginx
#	/var/run
