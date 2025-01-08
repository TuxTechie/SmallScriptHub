#!/bin/bash

# Function to generate a password
generate_password() {
    local length=$1
    tr -dc 'A-Za-z0-9!@#$%^&*()_+' < /dev/urandom | head -c $length
    echo
}

# Create a GUI using Zenity
option=$(zenity --list --title="Password Generator" --column="Option" \
    "Generate Small Password (8 characters)" \
    "Generate Large Password (16 characters)" \
    "Generate Complex Password (24 characters)")

case $option in
    "Generate Small Password (8 characters)")
        password=$(generate_password 8)
        zenity --info --text="Generated Small Password: $password"
        ;;
    "Generate Large Password (16 characters)")
        password=$(generate_password 16)
        zenity --info --text="Generated Large Password: $password"
        ;;
    "Generate Complex Password (24 characters)")
        password=$(generate_password 24)
        zenity --info --text="Generated Complex Password: $password"
        ;;
    *)
        zenity --error --text="Invalid option, please try again."
        ;;
esac
