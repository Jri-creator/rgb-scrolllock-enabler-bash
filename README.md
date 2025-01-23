


# RGB LED Basher - Enable your keyboard's RGB lights on Linux

This simple Bash script can easily allow you to use the RGB lights on your
keyboard by turning the Scroll Lock LED on. It does not turn on Scroll Lock,
only the LED for it. This will allow you to use the RGB lighting on your keyboard,
considering it uses the Scroll Lock key to turn it on.

## Why was it created

Ubuntu, along with other distros, don't naively support the use of Scroll Lock,
which can explain why pressing the Scroll Lock key doesn't work. I found the working
command that allows you to turn on the Scroll Lock LED, so that you can use the RGB on
your keyboard without turning Scroll Lock by itself on. I made this into a simple,
easy to execute bash script for my convenience, now I share it to everyone interested.

## Description

RGB LED Basher is Free and Open Source Software (FOSS), designed as a
simple, easy, and accessible solution for users of RGB keyboards. It 
turns the keyboard's Scroll Lock on, which turns on the keyboard's RGB.

## Notes

-   **Only Keyboards that use Scroll Lock to turn on RGB are supported:**
    RGB Keyboards that use the Scroll Lock key to turn on RGB work with this 
    script.

-   **Does not turn on Scroll Lock, ONLY IT'S LED:** To avoid issues when
    turning on Scroll Lock, only the LED is turned on. It is not made to turn
    on any Scroll Lock functionality, ONLY it's LED on the keyboard.
    
-   **Contributions Welcome:** If you're able to fix issues or improve
    the tool, feel free to submit a pull request.

## Prerequisites

Before using RGB LED Basher, ensure the following:

-   You have **SUDO PERMISSION**. This Script requires Sudo to execute.

## How to Use RGB LED Basher

1.  Clone the repository
  - `git clone https://github.com/jri-creator/rgb-scrolllock-enabler-bash.git`
  - `cd rgb-scrolllock-enabler-bash`
2.  Make the script executable
   - `chmod +x rgb_new.sh` **OR**
   - `chmod +x rgb.sh`
3.  (Optional) Move the script to a directory in your `PATH` for easier
    use
    - Rename rgb_new.sh **OR** rgb.sh to rgb (no ending)
    - `sudo mv rgb /usr/local/bin`
    -    -    Now you can run the program simply by typing `rgb` in any
        terminal.

4. Run the script

**Follow the prompts**

**IF You are using rgb_new script, you can use the -on or -off parameters to 
control the RGB without the menu!**

1.  Select one of the following options:
   - 1. Turn RGB On
   - 2. Turn RGB Off
        
2.  Enter your SUDO password (If you already did before, you shouldn't have
    to do it again)

3.  Enjoy your RGB lighting!

## Acknowledgments

RGB LED Basher is Free and Open Source Software.
