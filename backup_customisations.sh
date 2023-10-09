#!/bin/bash

# Determine the directory where the script is being executed
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Capture the current user's name
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
PATHS["Application Configuration"]="$HOME/.config/"
PATHS["Global Shortcuts"]="$HOME/.config/kglobalshortcutsrc"

# Check if root (since we are reading from system directories)
if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root."
   exit 1
fi

# Make sure the Garuda Linux Customisations directory exists
mkdir -p "$DIR/Garuda Linux Customisations"

# Iterate through each item and copy from system location to source directory
for ITEM in "${!PATHS[@]}"; do
    if [[ -d "${PATHS[$ITEM]}" || -f "${PATHS[$ITEM]}" ]]; then
        echo "Extracting $ITEM..."
        cp -r "${PATHS[$ITEM]}" "$DIR/Garuda Linux Customisations/$ITEM"

        # After copying, check for the two paths and chown them back to the user
        if [[ "$ITEM" == "Application Configuration" || "$ITEM" == "Global Shortcuts" ]]; then
            chown -R $CURRENT_USER:$CURRENT_USER "$DIR/Garuda Linux Customisations/$ITEM"
        fi
    else
        echo "Path for $ITEM not found, skipping..."
    fi
done

echo "Done extracting customizations!"
