# Password Generator

A simple yet powerful Password Generator that creates strong, secure passwords to ensure your online accounts remain protected. This application generates passwords with varying lengths and complexities to suit different security needs and stores the credentials with clear labels for better management.

## Features
- Generate Small Password (8 characters)
- Generate Large Password (16 characters)
- Generate Complex Password (24 characters)
- Store username, password, site name, and URL in a structured file format

## Requirements
- Unix-like operating system (Linux, macOS, etc.)
- Bash
- Zenity (for GUI version)

## Usage

### Non-GUI Version

1. Clone the repository:
    ```sh
    git clone https://github.com/TuxTechie/Password-Manager.git
    cd Password-Manager
    ```
2. Make the script executable:
    ```sh
    chmod +x password_generator.sh
    ```
3. Run the script:
    ```sh
    ./password_generator.sh
    ```

### GUI Version

1. Clone the repository:
    ```sh
    git clone https://github.com/TuxTechie/Password-Manager.git
    cd Password-Manager
    ```
2. Install Zenity:
    ```sh
    sudo apt-get update
    sudo apt-get install zenity
    ```
3. Make the script executable:
    ```sh
    chmod +x password_generator_gui.sh
    ```
4. Run the script:
    ```sh
    ./password_generator_gui.sh
    ```

## Example Usage

### Non-GUI Version

1. Generate Small Password (8 characters)  
2. Generate Large Password (16 characters)  
3. Generate Complex Password (24 characters)  

Choose an option: 2  
Enter username: user123  
Enter site name: ExampleSite  
Enter site URL: https://example.com  

Generated Large Password: A1b2C3d4E5f6G7h8

### GUI Version

1. Choose the type of password to generate from the Zenity dialog.
2. Enter the required details in the pop-up dialogs:
   - Username
   - Site Name
   - Site URL

## File Structure

Credentials are stored in `credentials.txt` with the following format:

