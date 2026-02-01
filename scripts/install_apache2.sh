#!/bin/bash

# This script installs Apache2 web server on a Debian-based system.

sudo apt-get update 

# Install Apache2 package

sudo apt-get install -y apache2

# Enable Apache2 service to start on boot

sudo systemctl enable apache2

# Start Apache2 service

sudo systemctl start apache2

#check the status of Apache2 service

sudo systemctl status apache2 

# print the apache2 version

apache2 -v

echo "Apache2 installation and configuration completed."


