# Use an official PHP runtime as a parent image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install any dependencies your PHP application might require
# For example, if you use Composer, uncomment the following lines:
# RUN apt-get update && apt-get install -y \
#    curl \
#    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# If your PHP app requires additional PHP extensions, install them here
# For example, if your app needs pdo_mysql, uncomment the following line:
# RUN docker-php-ext-install pdo_mysql

# Enable Apache mod_rewrite if needed
# RUN a2enmod rewrite

# Specify the port number the container should expose
EXPOSE 80

# Define environment variables, if necessary
# ENV VARIABLE_NAME value

# Start Apache when the container launches
CMD ["apache2-foreground"]
