# Use a lightweight web server base image
FROM nginx

# Copy static files to the default Nginx location
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80


