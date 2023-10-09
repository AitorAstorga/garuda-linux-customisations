#!/bin/bash

# Determine the directory where the script is being executed
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Capture the current user's name who invoked sudo
CURRENT_USER=${SUDO_USER:-$USER}

# Define an associative array (similar to a dictionary in other languages) for paths
declare -A PATHS

PATHS["GRUB Themes"]="/usr/share/grub/themes/"
PATHS["SDDM Themes"]="/usr/share/sddm/themes/"
PATHS["Plasma Look & Feel Themes"]="/usr/share/plasma/look-and-feel/"
PATHS["Plasma Desktop Themes"]="/usr/share/plasma/desktoptheme/"
PATHS["Plasma Color Schemes"]="/usr/share/color-schemes/"
PATHS["KWin Window Decorations"]="/usr/share/kwin/decorations/"
PATHS["Plasma Layout Templates"]="/usr/share/plasma/layout-templates/"
PATHS["Icon Themes"]="/usr/share/icons/"
PATHS["Konsole Themes"]="/usr/share/konsole/"
PATHS["Cursor Themes"]="/usr/share/icons/"
PATHS["Wallpapers"]="/usr/share/wallpapers/"
PATHS["Aurorae Window Decorations"]="/usr/share/aurorae/themes/"
PATHS["Plasmoid Widgets"]="/usr/share/plasma/plasmoids/"
PATHS["Kvantum Themes"]="/usr/share/Kvantum/"
PATHS["Application Configuration"]="~/.config/"
PATHS["Global Shortcuts"]="~/.config/kglobalshortcutsrc"

# Check if root (since we are writing to system directories)
if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root."
   exit 1
fi

# Iterate through each item and copy from source to destination
for ITEM in "${!PATHS[@]}"; do
    if [[ -d "$DIR/$ITEM" ]]; then
        echo "Copying $ITEM..."
        cp -r "$DIR/$ITEM" "${PATHS[$ITEM]}"

        # After copying, check for the two paths and chown them back to the user
        if [[ "$ITEM" == "Application Configuration" || "$ITEM" == "Global Shortcuts" ]]; then
            # Check if it's a directory or file and then chown
            if [[ -d "${PATHS[$ITEM]}" ]]; then
                chown -R $CURRENT_USER: "${PATHS[$ITEM]}"
            elif [[ -f "${PATHS[$ITEM]}" ]]; then
                chown $CURRENT_USER: "${PATHS[$ITEM]}"
            fi
        fi
    else
        echo "Directory $ITEM not found in $DIR, skipping..."
    fi
done

echo "Done copying customisations!"
