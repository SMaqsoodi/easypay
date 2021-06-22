FROM nginx:alpine
# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY src .
COPY index.html /usr/share/nginx/html/index.html
ENTRYPOINT ["nginx"]
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx
EXPOSE 8080
