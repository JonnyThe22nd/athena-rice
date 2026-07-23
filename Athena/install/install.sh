#!/bin/bash


set -e


INSTALL_DIR="$HOME/.local/share/athena"


echo "Installing Athena"


mkdir -p "$INSTALL_DIR"


cp -r ../* "$INSTALL_DIR"


mkdir -p "$HOME/.config/hypr"


echo "Add Athena startup to your hyprland.lua"



mkdir -p "$HOME/.config/autostart"


cp athena.desktop \
"$HOME/.config/autostart/"


echo "Athena installed"