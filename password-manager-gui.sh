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

# Function to escape special characters in the password
escape_password() {
    local password=$1
    echo "${password//&/&amp;}"
}

# Create a GUI using Zenity for password options
option=$(zenity --list --title="Password Generator" --column="Option" \
    "Generate Small Password (8 characters)" \
    "Generate Large Password (16 characters)" \
    "Generate Complex Password (24 characters)")

if [ -n "$option" ]; then
    # Prompt for username, site name, and URL
    username=$(zenity --entry --title="Username" --text="Enter username:")
    sitename=$(zenity --entry --title="Site Name" --text="Enter site name:")
    url=$(zenity --entry --title="Site URL" --text="Enter site URL:")

    case $option in
        "Generate Small Password (8 characters)")
            password=$(generate_password 8)
            escaped_password=$(escape_password "$password")
            zenity --info --text="Generated Small Password: $escaped_password"
            store_credentials $username $password $sitename $url
            ;;
        "Generate Large Password (16 characters)")
            password=$(generate_password 16)
            escaped_password=$(escape_password "$password")
            zenity --info --text="Generated Large Password: $escaped_password"
            store_credentials $username $password $sitename $url
            ;;
        "Generate Complex Password (24 characters)")
            password=$(generate_password 24)
            escaped_password=$(escape_password "$password")
            zenity --info --text="Generated Complex Password: $escaped_password"
            store_credentials $username $password $sitename $url
            ;;
        *)
            zenity --error --text="Invalid option, please try again."
            ;;
    esac
else
    zenity --error --text="No option selected, please try again."
fi
