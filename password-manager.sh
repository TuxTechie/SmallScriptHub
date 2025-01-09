#!/bin/bash

# Function to generate a password
generate_password() {
    local length=$1
    tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c $length
    echo
}

# Function to store username, password, site name, and URL
store_credentials() {
    local username=$1
    local password=$2
    local sitename=$3
    local url=$4
    local filename='credentials.txt'
    
    # Append the credentials to the file
    echo "Username: $username" >> $filename
    echo "Password: $password" >> $filename
    echo "Site Name: $sitename" >> $filename
    echo "URL: $url" >> $filename
    echo "-------------------" >> $filename  # Add a horizontal line
    echo "-------------------" >> $filename  # Add another horizontal line
    echo "" >> $filename  # Add an empty line for separation
}

echo "Password Generator"
echo "1. Generate Small Password (8 characters)"
echo "2. Generate Large Password (16 characters)"
echo "3. Generate Complex Password (24 characters)"
read -p "Choose an option: " option

# Prompt for the username, site name, and URL
read -p "Enter username: " username
read -p "Enter site name: " sitename
read -p "Enter site URL: " url

case $option in
    1)
        password=$(generate_password 8)
        echo "Generated Small Password: $password"
        store_credentials $username $password $sitename $url
        ;;
    2)
        password=$(generate_password 16)
        echo "Generated Large Password: $password"
        store_credentials $username $password $sitename $url
        ;;
    3)
        password=$(generate_password 24)
        echo "Generated Complex Password: $password"
        store_credentials $username $password $sitename $url
        ;;
    *)
        echo "Invalid option, please try again."
        ;;
esac
