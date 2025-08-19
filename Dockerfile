# Use the official PHP image
FROM php:8.2-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache
RUN a2enmod rewrite

RUN echo "SetEnv HTTPS on" >> /etc/apache2/apache2.conf

# Set the working directory
WORKDIR /var/www/html

# Copy the project code into the container
COPY . /var/www/html

RUN mv "/var/www/html/php.ini" "$PHP_INI_DIR/php.ini"