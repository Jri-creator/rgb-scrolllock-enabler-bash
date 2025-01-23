#!/bin/bash

# Function to display menu and execute commands
function toggle_rgb {
    echo "Select an option:"
    echo "1. Turn RGB On"
    echo "2. Turn RGB Off"
    read -p "Enter your choice (1 or 2): " choice

    case $choice in
        1)
            echo "Turning RGB On..."
            sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
            ;;
        2)
            echo "Turning RGB Off..."
            sudo bash -c "/usr/bin/setleds -L -scroll < /dev/console"
            ;;
        *)
            echo "Invalid choice. Exiting."
            exit 1
            ;;
    esac
}

# Execute the function
toggle_rgb

# End the script
exit 0

