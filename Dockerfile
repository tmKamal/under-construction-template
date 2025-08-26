# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy your static HTML files to the Nginx web server's public directory
# Ensure your static files (e.g., index.html, CSS, JS, images) are in the same directory as the Dockerfile
COPY . /usr/share/nginx/html

# Expose port 80, which is the default for HTTP traffic and where Nginx will serve the content
EXPOSE 80

# The default command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]