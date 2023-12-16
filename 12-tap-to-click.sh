# Running as root

# Remove the xserver-xorg-input-synaptics package. (important)
sudo apt-get remove xserver-xorg-input-synaptics

# Install xserver-xorg-input-libinput:
sudo apt-get install xserver-xorg-input-libinput

# create /etc/X11/xorg.conf.d/40-libinput.conf
sudo mkdir /etc/X11/xorg.conf.d
sudo echo 'Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "Tapping" "on"
EndSection' > /etc/X11/xorg.conf.d/40-libinput.conf

# Reboot

# Source:
# https://unix.stackexchange.com/questions/337008/activate-tap-to-click-on-touchpad
