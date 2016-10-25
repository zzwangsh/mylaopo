# Marry image
FROM alpine:latest
MAINTAINER sam zzwangsh@163.com
RUN apk --update add nginx \
    && mkdir -p /run/nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./html /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx","-g","daemon off;"]
