FROM nginx:1.25-alpine
COPY index.html /usr/share/nginx/html/index.html
RUN echo 'server { listen 80; location / { try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
EXPOSE 80
