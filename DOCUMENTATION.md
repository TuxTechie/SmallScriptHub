```markdown
# Password Manager Documentation

## Overview
The Password Manager script allows users to generate and securely store passwords of varying lengths and complexities along with associated usernames, site names, and URLs. The script is written in Bash and uses the `/dev/urandom` pseudo-random number generator to ensure strong and unpredictable passwords. This application provides both a command-line interface (CLI) and a graphical user interface (GUI) using Zenity.

## Functions

### `generate_password()`
This function generates a password of a specified length using a combination of upper-case letters, lower-case letters, digits, and special characters.

**Parameters:**
- `length`: The desired length of the password.

**Usage:**
```sh
generate_password 16
```

### `store_credentials()`
This function stores the username, password, site name, and URL in a structured format with clear labels and separation for easy management.

**Parameters:**
- `username`: The username associated with the password.
- `password`: The generated password.
- `sitename`: The name of the site.
- `url`: The URL of the site.

**Usage:**
```sh
store_credentials "user123" "A1b2C3d4E5f6G7h8" "ExampleSite" "https://example.com"
```

## Script Flow (Non-GUI Version)
1. Display the menu with three options: Small Password (8 characters), Large Password (16 characters), and Complex Password (24 characters).
2. Read the user input and prompt for username, site name, and URL.
3. Call the `generate_password()` function with the appropriate length based on the user's choice.
4. Store the generated password along with the entered details using `store_credentials()`.
5. Print the generated password to the console.

## Script Flow (GUI Version)
1. Display a dialog with three options using Zenity: Small Password (8 characters), Large Password (16 characters), and Complex Password (24 characters).
2. Prompt for the username, site name, and URL using Zenity input dialogs.
3. Call the `generate_password()` function with the appropriate length based on the user's choice.
4. Store the generated password along with the entered details using `store_credentials()`.
5. Display the generated password using a Zenity info dialog.

## Error Handling
- If the user enters an invalid option, the script will display a message indicating the invalid choice and prompt the user to try again.
- In the GUI version, an error dialog will be displayed using Zenity for invalid choices or missing inputs.

## File Structure
The credentials are stored in a file called `credentials.txt` with the following format:

```
Username: user123
Password: A1b2C3d4E5f6G7h8
Site Name: ExampleSite
URL: https://example.com
-------------------
-------------------

Username: anotheruser
Password: F8g7H6i5J4k3L2m1
Site Name: AnotherSite
URL: https://anothersite.com
-------------------
-------------------
```

## Improved Features Compared to Previous Version
- **Previous Version**:
  - Only generated passwords without storing any additional details.
  - Provided no clear structure or labels for generated passwords.
  - Did not support input for usernames, site names, and URLs.

- **Improved Version**:
  - Prompts for and stores usernames, site names, and URLs.
  - Stores credentials in a structured and clearly labeled format.
  - Uses horizontal lines to separate each entry for better readability.
  - Includes a GUI version using Zenity for a more user-friendly interface.
  - Handles special characters in passwords to avoid issues with Zenity dialogs.

## Enhancements
Future enhancements could include:
- Allowing the user to specify custom lengths for passwords.
- Adding additional complexity options (e.g., including or excluding certain character sets).
- Implementing encryption for stored passwords to enhance security.

Feel free to customize these files further based on your project's needs. If there's anything else you'd like to add or adjust, just let me know! 📜✨
```

This updated `documentation.md` file now covers the new features and improvements of the Password Manager, as well as the script flow for both the CLI and GUI versions. Let me know if you need any further adjustments or additional information!
