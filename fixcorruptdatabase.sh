#!/bin/bash

# Script created by B1ll J03
# 01/11/25 (DD/MM/YY)

# I am not resposible for your problems. Run at your own risk!

# Source: https://vadosware.io/post/fixing-gpgme-error-on-arch/
# Remove the pacman GPG keyring
sudo rm -rf /etc/pacman.d/gnupg

# Remove the pacman synchronization database (DB for short)
sudo rm -R /var/lib/pacman/sync

# Initalize and regenerate the trust roots
sudo pacman-key --init
sudo pacman-key --populate

# Update pacman by forcing a complete redownload of all repo DBs
sudo pacman -Syy
