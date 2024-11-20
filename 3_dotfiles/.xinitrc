xrdb -merge ~/.config/URxvt/config

xinput set-prop 'Synaptics TM3289-021' 'libinput Tapping Enabled' 1
xinput set-prop 'Synaptics TM3289-021' 'libinput Natural Scrolling Enabled' 1

exec dbus-run-session -- i3
