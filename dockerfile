# Use the Nginx image as the base
FROM nginx:alpine

# Copy the static website files to the Nginx serving directory
COPY mico-html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
