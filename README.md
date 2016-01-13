# alpine-nginx

Nginx image based on Alpine linux.

## How to use it

In your Dockerfile, extend this and copy you app nginx config file to `/etc/nginx/sites-enabled/`.
This creates a `www-data` user so make sure you use the same when setting up your image.

You might want something like this:


    FROM ukti/alpine-nginx:1.0

    ...
    USER www-data
    COPY conf/nginx/default.conf /etc/nginx/sites-enabled/default.conf
    ...
