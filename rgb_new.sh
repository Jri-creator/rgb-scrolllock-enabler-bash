#!/bin/bash

# Function to display menu and execute commands
function toggle_rgb {
    if [[ "$1" == "-reset" ]]; then
        echo "Resetting RGB..."
        sudo bash -c "/usr/bin/setleds -L -scroll < /dev/console"
        sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
        exit 0
    elif [[ "$1" == "-on" ]]; then
        echo "Turning RGB On..."
        sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
        exit 0
    elif [[ "$1" == "-off" ]]; then
        echo "Turning RGB Off..."
        sudo bash -c "/usr/bin/setleds -L -scroll < /dev/console"
        exit 0
    fi

    echo "Did you know that you could use -on or -off to control RGB without this menu?"
    echo "If your RGB turned off when pressing Caps or Num Lock, use -reset !"
    echo "Select an option:"
    echo "1. Turn RGB On"
    echo "2. Turn RGB Off"
    echo "3. Reset RGB"
    read -p "Enter your choice (1, 2, 3): " choice

    case $choice in
        1)
            echo "Turning RGB On..."
            sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
            ;;
        2)
            echo "Turning RGB Off..."
            sudo bash -c "/usr/bin/setleds -L -scroll < /dev/console"
            ;;
        3)
            echo "Resetting RGB..."
            sudo bash -c "/usr/bin/setleds -L +scroll < /dev/console"
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

