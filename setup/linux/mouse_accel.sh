sudo mkdir /etc/X11/xorg.conf.d
sudo cp ~/Development/dotfiles/etc_files/50-mouse-acceleration.conf /etc/X11/xorg.conf.d/

# to change pointer speed
# xinput --list
# xinput --set-prop 13 "Coordinate Transformation Matrix" 1.000000, 0.000000, 0.000000, 0.000000, 1.000000, 0.000000, 0.000000, 0.000000, 1.000000
