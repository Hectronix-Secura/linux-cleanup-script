#!/bin/bash

source src/cleanup.sh

main_menu() {
    while true; do
        clear
        echo "==============================="
        echo " Linux Cleanup & Maintenance"
        echo "==============================="
        echo "1) Disk usage report"
        echo "2) Clean temporary files"
        echo "3) Clean package cache"
        echo "4) Remove unused packages"
        echo "5) Full cleanup"
        echo "6) Exit"
        echo "-------------------------------"
        read -p "Choose an option: " choice

        case "$choice" in
            1) disk_report ;;
            2) clean_temp ;;
            3) clean_cache ;;
            4) remove_unused ;;
            5) full_cleanup ;;
            6) exit 0 ;;
            *) echo "Invalid option"; sleep 1 ;;
        esac
    done
}
