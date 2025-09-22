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
PATHS["User Plasma Themes"]="$HOME/.local/share/plasma/"
PATHS["User Color Schemes"]="$HOME/.local/share/color-schemes/"
PATHS["User Aurorae Themes"]="$HOME/.local/share/aurorae/"
PATHS["User Konsole Themes"]="$HOME/.local/share/konsole/"
PATHS["User Icon Themes"]="$HOME/.local/share/icons/"
PATHS["User Wallpapers"]="$HOME/.local/share/wallpapers/"
PATHS["SDDM Configuration"]="/etc/sddm.conf"
PATHS["SDDM User Config"]="/var/lib/sddm/.config/"
PATHS["Plasma Welcome Pages"]="/usr/share/plasma/plasma-welcome/extra-pages/"
PATHS["Session Files X11"]="/usr/share/xsessions/"
PATHS["Session Files Wayland"]="/usr/share/wayland-sessions/"
PATHS["User Avatars"]="/var/lib/AccountsService/icons/"

# Check if root (since we are reading from system directories)
if [[ $EUID -ne 0 ]]; then
   echo "Please run this script as root."
   exit 1
fi

# Make sure the Garuda Linux Customisations directory exists
BACKUP_DIR="$DIR/Garuda Linux Customisations"
mkdir -p "$BACKUP_DIR"

# Create timestamp for this backup
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
echo "Creating backup with timestamp: $TIMESTAMP"

# Iterate through each item and copy from system location to source directory
for ITEM in "${!PATHS[@]}"; do
    if [[ -d "${PATHS[$ITEM]}" || -f "${PATHS[$ITEM]}" ]]; then
        echo "Extracting $ITEM..."
        cp -r "${PATHS[$ITEM]}" "$BACKUP_DIR/$ITEM"

        # After copying, check for user paths and chown them back to the user
        if [[ "$ITEM" == "Application Configuration" || "$ITEM" == "Global Shortcuts" || \
              "$ITEM" == "User Plasma Themes" || "$ITEM" == "User Color Schemes" || \
              "$ITEM" == "User Aurorae Themes" || "$ITEM" == "User Konsole Themes" || \
              "$ITEM" == "User Icon Themes" || "$ITEM" == "User Wallpapers" ]]; then
            chown -R $CURRENT_USER:$CURRENT_USER "$BACKUP_DIR/$ITEM"
        fi
    else
        echo "Path for $ITEM not found, skipping..."
    fi
done

echo "Done extracting customizations!"
