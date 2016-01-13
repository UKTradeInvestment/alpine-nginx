FROM alpine:3.3

RUN adduser -Dh /app www-data
RUN apk add --update nginx && rm -rf /var/cache/apk/*

# nginx config
COPY conf/nginx/nginx.conf /etc/nginx/nginx.conf

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

# Expose the ports for nginx
EXPOSE 80 443

CMD ["nginx"]
