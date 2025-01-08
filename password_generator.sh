#!/bin/bash

# Function to generate a password
generate_password() {
    local length=$1
    tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c $length
    echo
}

echo "Password Generator"
echo "1. Generate Small Password (8 characters)"
echo "2. Generate Large Password (16 characters)"
echo "3. Generate Complex Password (24 characters)"
read -p "Choose an option: " option

case $option in
    1)
        password=$(generate_password 8)
        echo "Generated Small Password: $password"
        ;;
    2)
        password=$(generate_password 16)
        echo "Generated Large Password: $password"
        ;;
    3)
        password=$(generate_password 24)
        echo "Generated Complex Password: $password"
        ;;
    *)
        echo "Invalid option, please try again."
        ;;
esac
