#!/bin/bash

disk_report() {
    echo
    echo "Disk usage:"
    df -h
    echo
    read -p "Press Enter to continue..."
}

clean_temp() {
    echo "Cleaning temporary files..."
    sudo rm -rf /tmp/*
    echo "Done"
    sleep 1
}

clean_cache() {
    echo "Cleaning package cache..."

    if command -v apt >/dev/null; then
        sudo apt clean
    elif command -v dnf >/dev/null; then
        sudo dnf clean all
    elif command -v pacman >/dev/null; then
        sudo pacman -Scc --noconfirm
    fi

    echo "Done"
    sleep 1
}

remove_unused() {
    echo "Removing unused packages..."

    if command -v apt >/dev/null; then
        sudo apt autoremove -y
    elif command -v dnf >/dev/null; then
        sudo dnf autoremove -y
    fi

    echo "Done"
    sleep 1
}

full_cleanup() {
    clean_temp
    clean_cache
    remove_unused
    echo "Full cleanup completed"
    sleep 2
}
