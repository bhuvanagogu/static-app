# Use a lightweight web server base image
FROM nginx:alpine

# Maintainer information
LABEL maintainer="you@example.com"

# Copy static files to the default Nginx location
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]

