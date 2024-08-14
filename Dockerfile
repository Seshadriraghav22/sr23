# Use the official Ubuntu 22.04 base image
FROM ubuntu:22.04

# Install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables for Apache
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# Copy the custom index.html file into the container
COPY index.html /var/www/html/index.html

# Expose port 80 for Apache
EXPOSE 80

# Set the entrypoint and command for the container
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
