#!/bin/bash

# Function to display menu and execute commands
function toggle_rgb {
    if [[ "$1" == "-on" ]]; then
        echo "Turning RGB On..."
        sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
        exit 0
    elif [[ "$1" == "-off" ]]; then
        echo "Turning RGB Off..."
        sudo bash -c "/usr/bin/setleds -L -scroll < /dev/console"
        exit 0
    fi

    echo "Did you know that you could use -on or -off to control RGB without this menu?"
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

# Execute the function with optional argument
toggle_rgb "$1"

# End the script
exit 0

