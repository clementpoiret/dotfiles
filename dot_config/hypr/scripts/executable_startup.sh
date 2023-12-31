# ================================
# |        Applications          |
# ================================

# Power Notifications
/sbin/powernotd &

# Waybar
~/.config/waybar/launch.sh &

# Sync files between devices
syncthing-gtk -m &

# Clipboard Manager (copyq)
copyq &

# Discord
# discord --start-minimized &

# Mail Client (mailspring)
# mailspring --background &


# ================================
# |      Utilities/Daemons       |
# ================================

# Policy Authentication Agent 
# /usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
# lxpolkit &

# Bluetooth Utilities
# /usr/lib/bluetooth/mpris-proxy &
# mpris-proxy &
# blueman-applet &
# blueman-tray &

# NetworkManager Applet 
nm-applet &

# Spotify Daemon
# spotifyd &

# Music Player Daemon (MPD)
# mpd --stdout --verbose &

# Notification Daemon
# swaync &

# Wob
# function wbs() {
#     # Create pipe file if it doesn't exist
#     [ -p /tmp/wobpipe ] || mkfifo /tmp/wobpipe

#     # Start wob
#     tail -f /tmp/wobpipe | wob
# }

# Check every 5 seconds if wob is running
# while true; do
#     # Check if wob is running
#     if ! pgrep -x "wob" > /dev/null; then
#         # Start wob
#         wbs &
#     fi

#     # Wait 5 seconds
#     sleep 5
# done &

# XDG Desktop Portal (Wayland)
function xdph() {
    # Wait 1 second
    # sleep 1

    # Kill all running instances of xdg-desktop-portal and its variants
    # killall -9 xdg-desktop-portal
    # killall -9 xdg-desktop-portal-wlr
    # killall -9 xdg-desktop-portal-hyprland

    # Start xdg-desktop-portal and xdg-desktop-portal-hyprland
    # sleep 2 
    # /usr/lib/xdg-desktop-portal-hyprland &
    # sleep 2
    # /usr/lib/xdg-desktop-portal &
    # sleep 2
    # /usr/lib/xdg-desktop-portal-wlr
    sleep 4

    killall xdg-desktop-portal-hyprland
    killall xdg-desktop-portal-gtk
    killall xdg-desktop-portal
    /usr/lib/xdg-desktop-portal-hyprland &
    sleep 4
    /usr/lib/xdg-desktop-portal &
    sleep 4
    /usr/lib/xdg-desktop-portal-gtk &
}

# xdph &

# Wayland Display Manager (WDM)
# wdm &

# WLSunset
wlsunset -S 8:00 -s 18:00 -t 4500 -T 7500 -l 48.9 -L 2.4 &

# Swayidle (GitHub Copilot made this so idk)
# swayidle -w timeout 300 'swaylock -f -i /home/alex/Pictures/Wallpapers/lockscreen.png' resume 'swaymsg "output * dpms off"' timeout 600 'swaymsg "output * dpms on"' resume 'swaymsg "output * dpms off"' before-sleep 'swaylock -f -i /home/alex/Pictures/Wallpapers/lockscreen.png'

# Wallpaper
hyprpaper &
