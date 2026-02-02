# Linux Cleanup Script

## Description
Linux Cleanup Script is an interactive CLI tool designed to safely clean and optimize a Linux system.

It helps remove temporary files, unused packages, old logs, and cache data to free disk space and improve performance.

This tool is beginner-friendly and safe by default.

## Target audience
- Linux beginners
- System administrators
- Students learning Linux maintenance
- Anyone wanting to free disk space

## Features
- Interactive CLI menu
- Temporary files cleanup
- Package cache cleanup
- Old logs cleanup
- Unused packages removal
- Disk usage report before/after cleanup
- Safe and beginner-friendly

## Use cases
- Regular system maintenance
- Low disk space troubleshooting
- Learning Linux cleanup commands
- Server optimization

## Project structure
 linux-cleanup-script/
├── README.md
├── run.sh
├── src/
│ ├── menu.sh
│ └── cleanup.sh
├── screenshots

## Cloner le repository
git clone https://github.com/Hectronix-Secura/linux-cleanup-script.git

# Aller dans le dossier
cd linux-cleanup-script

# Rendre le script exécutable
chmod +x run.sh

# Exécuter avec sudo
sudo ./run.sh
