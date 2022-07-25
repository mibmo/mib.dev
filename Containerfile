FROM docker.io/alpine:latest

RUN apk add nginx
USER nginx

WORKDIR /data
ADD . .

EXPOSE 3000
CMD ["nginx", "-c", "/data/nginx.conf"]
