# input-device-toggle-daemon

Systemd socket-activated daemon for toggling input devices (like touchpads, trackpoints, keyboards, mice) on Linux. As simple as it gets.

## Build & Install (Arch Linux)

Using `just`:
```bash
just build
just install
just enable
```

Or manually:
```bash
makepkg -si
sudo systemctl enable --now input-device-toggle.socket
```

## Usage

### List devices

```bash
input-device-toggle list
```

### Toggle devices

Toggle devices using their `input*` identifier or by matching device name (case-insensitive substring). Be aware, that the input node number can change between reboots and device plugging/unplugging.

```bash
# By input node
input-device-toggle off input9
input-device-toggle on input9
input-device-toggle toggle input9

# By name match
input-device-toggle off touchpad
input-device-toggle on "Elan TrackPoint"
input-device-toggle toggle "touchpad"
```
