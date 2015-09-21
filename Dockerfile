# Marry image
FROM alpine:latest
MAINTAINER sam zzwangsh@163.com
RUN apk --update add nginx
COPY ./html /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx","-g","daemon off;"]
