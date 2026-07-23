#!/bin/bash


set -e


echo "Installing Athena dependencies"


sudo pacman -S --needed \
    quickshell \
    python \
    python-psutil \
    hyprland \
    pipewire \
    wireplumber \
    networkmanager \
    bluez \
    playerctl


echo "Dependencies installed"