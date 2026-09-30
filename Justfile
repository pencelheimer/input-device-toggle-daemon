# Justfile for input-device-toggle-daemon

default:
    @just --list

# Build the pacman package
build:
    makepkg -cf

# Install the built pacman package
install:
    sudo pacman -U --noconfirm input-device-toggle-daemon-*.pkg.tar.zst

# Enable and start the systemd socket unit
enable:
    sudo systemctl enable --now input-device-toggle.socket

# Disable and stop the systemd socket unit
disable:
    sudo systemctl disable --now input-device-toggle.socket

# Check systemd socket status
systemd-status:
    systemctl status input-device-toggle.socket

# List input devices and status
list:
    input-device-toggle list

# Turn on input device
on device:
    input-device-toggle on {{device}}

# Turn off input device
off device:
    input-device-toggle off {{device}}

# Toggle input device
toggle device:
    input-device-toggle toggle {{device}}

# Clean build artifacts
clean:
    rm -f *.pkg.tar.zst
