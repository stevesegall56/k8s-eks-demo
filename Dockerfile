# Use a lightweight NGINX server image
FROM nginx:alpine

# Copy HTML into the NGINX folder that serves static files
COPY index.html /usr/share/nginx/html/index.html
