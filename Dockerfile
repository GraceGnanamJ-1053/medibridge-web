# Use the official Nginx image as the base
# This is a very lightweight and high-performance web server
FROM nginx:1.25-alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx page
RUN rm index.html

# Copy all your website files (index.html, style.css, images)
# into the Nginx web root directory
COPY . .

# Expose port 80 (the default HTTP port Nginx listens on)
EXPOSE 80