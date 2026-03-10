FROM nginx:alpine

COPY index.html style.css script.js /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD ["/bin/sh", "-c", "sed -i 's/__PORT__/'\"$PORT\"'/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
