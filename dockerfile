FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy application files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
