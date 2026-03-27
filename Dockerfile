FROM nginx:1.25-alpine
COPY index.html /usr/share/nginx/html/index.html
RUN cat > /etc/nginx/conf.d/default.conf << 'EOF'
server {
    listen 80;
    root /usr/share/nginx/html;
    index index.html;
    location / {
        try_files $uri $uri/ =404;
    }
}
EOF
EXPOSE 80
