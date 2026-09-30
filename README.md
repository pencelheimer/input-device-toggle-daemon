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

```bash
input-device-toggle list
input-device-toggle on [input*]
input-device-toggle off [input*]
input-device-toggle toggle [input*]
```
