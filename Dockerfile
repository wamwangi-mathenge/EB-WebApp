FROM nginx:latest

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy application files
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]