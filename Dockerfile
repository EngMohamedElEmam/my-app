# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install any dependencies your PHP application might require

# If your PHP app requires additional PHP extensions, install them here

# Enable Apache mod_rewrite if needed

# Set the 'ServerName' directive to suppress the warning
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Use a higher port number
EXPOSE 8080

# Create a non-root user
RUN useradd -m myuser
USER myuser

# Start Apache when the container launches
CMD ["apache2-foreground"]
